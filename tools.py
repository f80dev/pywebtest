from datetime import datetime
from time import sleep

from nerodia.browser import Browser
from selenium.webdriver.remote.webdriver import WebDriver
import mss
import mss.tools
import cv2
import numpy
from PIL import Image
from apscheduler.schedulers.background import BackgroundScheduler



class Tools:

    fastMode=False

    def __init__(self):
        self.capture_file=""
        self.frames=[]
        self.start=self.now()
        self.driver:WebDriver=WebDriver(command_executor="http://127.0.0.1:9515")
        self.driver.implicitly_wait(1)
        self.browser:Browser = Browser(self.driver)
        self.scheduler = BackgroundScheduler()

    def init_zone_capture(self):
        offset = 125
        self.mon = {
            "top": self.browser.window().position.y + offset,
            "left": self.browser.window().position.x,
            "width": self.browser.window().size.width,
            "height": self.browser.window().size.height - offset - 5
        }

    def mobile(self,position=0,width=250):
        self.browser.window().move_to(position*width*1.5, 0)
        self.browser.window().resize_to(width, width * 4)
        self.init_zone_capture()


    def go(self,url):
        if self.browser.url==url:return True
        self.browser.goto(url)
        self.wait(1)
        return True


    def set_field(self,id:str,text:str,index=-1):
        if index==-1:
            self.browser.text_field(id=id).value=text
        else:
            self.browser.text_fields(name=id)[index].value = text
        return True


    def wait(self,nSecondes=5):
        sleep(nSecondes)


    def find(self,id:str,index=0,pere=None):
        if pere is None:pere=self.browser

        obj=pere.element(id=id)
        if not obj.exist:
            objs=self.browser.elements(name=id)
            if len(objs) == 0: objs = self.browser.elements(tag_name=id)
            if len(objs)==0:objs=self.browser.elements(class_name=id)
            if len(objs)>index:obj=objs[index]

        if not obj.exist:return None
        return obj



    def click(self,id:str,index=0,timeout=0.2):
        obj=self.find(id,index)
        if obj is None:return False
        self.pointElement(obj)
        obj.click()
        self.wait(timeout)
        return True


    def capture(self,name):
        if len(self.capture_file)>0:self.stop()

        self.capture_file=name
        with mss.mss() as self.sct:
            self.sct.compression_level = 2
        self.scheduler.start()
        self.scheduler.add_job(self.job_capture,"interval",minutes=0.001,max_instances=1)



    def stop(self):
        video = cv2.VideoWriter('./'+self.capture_file+'.avi',
                                cv2.VideoWriter_fourcc(*'XVID'),
                                10,
                                (self.mon["width"], self.mon["height"])
                                )

        self.log("Encodage de "+str(len(self.frames))+" images")
        for frame in self.frames:
            video.write(frame)

        video.release()
        cv2.destroyAllWindows()
        self.frames=list()

        self.scheduler.shutdown()


    def job_capture(self):
        img = numpy.array(self.sct.grab(self.mon))
        img = numpy.flip(img[:, :, :3], 2)
        img = cv2.cvtColor(img, cv2.COLOR_BGR2RGB)
        #img=cv2.cvtColor(img, cv2.COLOR)

        self.frames.append(img)



    def waitFor(self, elt,timeout=10):
        for essai in range(timeout):
            self.wait(1)
            obj=self.find(elt)
            if not obj is None:
                return True

        return False



    def subtitle(self,text,delay=10000,position="90vh"):
        self.execute("showSubtitle",text,delay,"font-weight:bolder;font-size:x-large;",position)
        if not self.fastMode:self.wait(delay/1000-2)



    def pointElement(self,obj):
        x=obj.location.x+obj.size.width/2
        y=obj.location.y+obj.size.height/2
        self.execute("pointElement",x,y,300)
        if not self.fastMode:self.wait(0.3)


    def execute(self,file,*args):
        with open("js/"+file+".js", "r") as myfile:
            data= "".join(myfile.readlines())

        i=0
        for arg in args:
            i=i+1
            data=data.replace("#"+str(i),str(arg))

        self.browser.execute_script(data)


    def select(self, elt, index):
        obj=self.find(elt)
        if not obj is None:
            obj.select(index)
            return True
        return False

    # Retourne la date du jour en secondes
    def now(self):
        rc = datetime.now(tz=None).timestamp()
        return rc

    def log(self,text: str, sep='\n'):
        line: str = str(int(self.now() - self.start)) + " : " + text
        print(line)
        #store_log = line + sep + store_log[0:10000]
        return text

    def maximize(self):
        self.browser.window().maximize()
        self.init_zone_capture()



