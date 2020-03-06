from datetime import datetime
from os.path import exists
from random import randint, seed, random
from time import sleep

import pyautogui
from google.cloud import texttospeech
from nerodia.browser import Browser

from selenium.webdriver.common.keys import Keys
from selenium.webdriver.remote.webdriver import WebDriver
import mss
import mss.tools
import cv2
import numpy
from PIL import Image
from apscheduler.schedulers.background import BackgroundScheduler

from utils import getDuration


class Tools:

    fastMode=False
    browser=None
    dtStartCapture=None
    histo=list()
    fps=15 #réalisation du film a 15 images par secondes

    def __init__(self):
        self.capture_file=""
        self.client=None
        self.frames=[]
        self.player=None
        self.startLog=self.now()
        self.videoBatchFile=""
        self.driver:WebDriver=WebDriver(command_executor="http://127.0.0.1:9515")
        self.driver.implicitly_wait(1)
        self.browser:Browser = Browser(self.driver)
        self.scheduler = BackgroundScheduler()
        self.scheduler.start()

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


    def go(self,url:str):
        if not url.startswith("http"):url=self.browser.url.split(".com")[0]+".com/"+url
        if self.browser.url==url:return True
        self.browser.goto(url)
        self.wait(1)
        return True


    def getDelay(self,text: str):
        if self.fastMode:
            return 0
        else:
            sound_file=self.getSoundFile(text)
            return getDuration(sound_file)

            #n_words = len(text.split(" "))
            #return n_words * 300 + 1000



    def set_field(self,id=None,value=None,index=-1):
        if id is None:
            elt=self.browser.element()
        else:
            elt=self.find(id,index)

        if elt.tag_name=="input":
            if elt.attributes["type"]=="checkbox":
                if value:
                    elt.send_keys(Keys.SPACE)
                    self.add_click()
            else:
                self.clavier(value)

        if elt.tag_name=="select":
            if type(value)==str:elt.send_keys(value)
            if type(value)==int:
                for i in range(value):
                    elt.send_keys(Keys.ARROW_DOWN)

        return True


    def wait(self,nSecondes=5):
        if self.fastMode and nSecondes>3:nSecondes=3
        if nSecondes>0:
            sleep(nSecondes)


    def find(self,id,index=0,pere=None):
        if pere is None:pere=self.browser

        if type(id)==str:
            obj=pere.element(id=id)
            if not obj.exist:
                objs=pere.elements(name=id)
                if len(objs) == 0: objs = pere.elements(tag_name=id)
                if len(objs)==0:objs=pere.elements(class_name=id)
                if index<=len(objs):obj=objs[index]

            if not obj.exist:return None
            return obj
        else:
            #L'objet à trouvé à directement été passé en argument
            return id



    def click(self,id,index=0,timeout=0.2,text=""):
        obj=self.find(id,index)
        if obj is None:return False
        if len(text)>0:
            self.show(obj,text)

        self.pointElement(obj)
        try:
            obj.click()
            self.add_click()
            self.wait(timeout)
        except:
            self.log(str(id)+" est non clickable")
            return False

        return True


    def capture(self,name,title="",subtitle=""):
        """

        :param name:
        :param title:
        :param subtitle:
        :return:
        """

        if len(self.capture_file)>0:self.stop(10)
        self.log("Démarage de la capture pour le fichier " + name)

        self.capture_file=name
        with mss.mss() as self.sct:
            self.sct.compression_level = 2

        interval_en_minutes=1/(self.fps*60)
        self.scheduler.add_job(self.job_capture,"interval",minutes=interval_en_minutes,max_instances=1,id="capture_job")
        self.dtStartCapture = self.now()
        if len(title)>0:
            self.title(title,subtitle=subtitle,background="black")





    def fill_form(self,values,first=None,validate=None):
        if not first is None:
            self.find(first,0).focus()

        index=0
        for val in values:
            if type(val)==int:
                for i in range(val):
                    self.browser.send_keys(Keys.ARROW_DOWN)

            if type(val)==bool:
                self.browser.send_keys(Keys.SPACE)

            if type(val)==str:
                if val.startswith("list:"):
                    elt=self.driver.switch_to.active_element
                    self.browser.send_keys(Keys.ENTER)
                    self.select_in_list(list((val.split("list:")[1]).split(",")))

                    #On reparcours la liste des élements
                    self.find(first, 0).focus()
                    for k in range(index):
                        self.browser.send_keys(Keys.TAB)
                else:
                    if len(val)>0:
                        self.clavier(val)
                        self.browser.send_keys(Keys.CONTROL+"s")

            if not self.fastMode:self.wait(0.5)

            index=index+1
            if index < len(values): self.browser.send_keys(Keys.TAB)

        if not validate is None:
            if type(validate)==str and "ENTER" in validate:
                self.browser.send_keys(Keys.ENTER)
                return True
            else:
                return self.click(validate,0)


    def clavier(self,text,elt=None):
        if not elt is None:elt.focus()
        dtStart= self.now()
        text=text.replace("{{ENTER}}",Keys.ENTER)
        for ch in text:
            self.wait(randint(0,100)/1000)
            self.browser.send_keys(ch)

        self.add_sound("./clavier.wav", dtStart, (self.now() - dtStart), 0.6, 0, 0, 0)



    def select_in_list(self,indexes,filter=""):
        """

        :param index:
        :return:
        """

        if type(indexes)!=list:indexes=list(indexes)

        if type(indexes[0])==str:
            filter=indexes[0]
            del indexes[0]
            if len(indexes)==0:indexes.append(1)

        self.find(id="form-control fsInputFilter", index=0).focus()
        if len(filter) > 0:
            self.browser.send_keys(Keys.CONTROL+"a")
            self.browser.send_keys(filter)
            self.clavier("{{ENTER}}")

        l_index=list()
        for ch in indexes:
            l_index.append(int(ch))

        l_index.sort()


        for i in range(max(l_index)+1):
            self.browser.send_keys(Keys.TAB)
            if i in l_index:self.browser.send_keys(Keys.SPACE)

        self.click_at(50, 50)




    def click_at(self,x,y):
        pyautogui.click(self.browser.window().position.x + x,self.browser.window().position.y+100+y)


    def fill_form_old(self, zone, vals, submit):
        _zone=self.find(zone,0)
        elts_to_fill=list()
        for elt in _zone.elements(tag_name="input"):
            if elt.visible:
                elts_to_fill.append({"elt":elt,"position":elt.location.y})

        for elt in _zone.elements(tag_name="select"):
            elts_to_fill.append({"elt":elt,"position":elt.location.y})

        elts_to_fill=sorted(elts_to_fill,key=lambda elt:elt["position"])

        i=0
        for elt in elts_to_fill:
            self.set_field(elt["elt"].id,vals[i])
            i=i+1
            if i>=len(vals):break

        return self.click(submit)


    def nav(self, param):
        return param in self.browser.url


    def stop(self,offset=0):
        self.log("Fin de la capture")
        self.scheduler.remove_job(job_id="capture_job")
        video = cv2.VideoWriter('./'+self.capture_file+'.avi',
                                cv2.VideoWriter_fourcc(*'XVID'),
                                self.fps,
                                (self.mon["width"], self.mon["height"])
                                )

        self.log("Encodage de "+str(len(self.frames))+" images")
        for frame in self.frames:
            offset=offset-1
            if offset<0:video.write(frame)

        video.release()
        cv2.destroyAllWindows()


        self.log("Production du fichier BAT de génération du film")

        #format = self.videoBatchFile.substring(videoFile.lastIndexOf(".") + 1).toLowerCase().trim();
        #new_name = self.videoBatchFile.replace("tags", tags.replace("#", "")).replaceAll(" ", "_").replaceAll("_temp", "");

        self.videoBatchFile =self.videoBatchFile + "\ndel output.mkv\nffmpeg -i \"" + self.capture_file+".avi" + "\" -i input.wav -c copy output.mkv\n"

        with open(self.capture_file+".bat", "w") as text_file:
            text_file.write(self.videoBatchFile)

        self.frames=list()
        self.histo=list()


    def close(self):
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


    def waitForURL(self, text,timeout=10):
        for essai in range(timeout):
            if text in self.browser.url:
                return True
            self.wait(1)

        return False




    def speak(self,text: str, output_filename="",lang='fr-FR'):
        """

        :param text:
        :param output_filename:
        :return:
        """
        if self.fastMode or self.dtStartCapture is None:return 0

        if len(output_filename) == 0:
            output_filename = self.getSoundFile(text)

        if not exists(output_filename):
            if self.client is None:
                self.client = texttospeech.TextToSpeechClient().from_service_account_file("testandcapture-508d678005de.json")

            synthesis_input = texttospeech.types.SynthesisInput(ssml=text)
            voice = texttospeech.types.VoiceSelectionParams(
                language_code=lang,
                ssml_gender=texttospeech.enums.SsmlVoiceGender.NEUTRAL
            )
            audio_config = texttospeech.types.AudioConfig(audio_encoding=texttospeech.enums.AudioEncoding.OGG_OPUS)

            self.log("Vocalisation de la phrase " + text)
            response = self.client.synthesize_speech(synthesis_input, voice, audio_config)

            # The response's audio_content is binary.
            with open(output_filename, 'wb') as out:
                # Write the response to the output file.
                out.write(response.audio_content)
                out.close()

        delay=getDuration(output_filename)

        timecode=int((self.now()-self.dtStartCapture)*1000)
        code="\n#Insertion de '"+text+'" de '+str(timecode/1000)+" sur "+str(delay)+" secondes\n"
        if "input.wav" not in self.videoBatchFile:
            code = code+"\ndel input.wav\nffmpeg -f lavfi -i anullsrc=channel_layout=1:sample_rate=48000 -t " + str(timecode/1000) + " input.wav\n"

        code = code + "del output.wav\n"
        code=code+"call ffmpeg -i input.wav -acodec libopus -i "+output_filename+" -filter_complex \"[0:a]volume=1[a0];[1:a]adelay=%delay%,volume=1[a1];[a0][a1]amix=inputs=2,volume=2[a]\" -map \"[a]\" output.wav\n"
        code = code + "\ndel input.wav\ncopy output.wav input.wav\n"

        code = code.replace("%delay%",str(timecode) + "|" + str(timecode))
        self.videoBatchFile = self.videoBatchFile+code + "\n"

        return delay







    def add_sound(self,file, startInMilliseconds, durationInSec, volume, offsetInSec, start_fadeout,delay_fadeout):
        """
        Ajout d'un effet sonor
        :param file:
        :param startInMilliseconds:
        :param durationInSec:
        :param volume:
        :param offsetInSec:
        :param start_fadeout:
        :param delay_fadeout:
        :return:
        """
        if self.dtStartCapture is None:return False

        timecode=int((self.now()-self.dtStartCapture)*1000)

        sOffset = "-ss " + str(offsetInSec)
        if offsetInSec == 0:sOffset="";

        sDuration = "-t " + str(durationInSec)
        if durationInSec == 0:sDuration=""

        code="\n#Ajout de "+file+" à la position "+str(timecode)+"\n"
        code=code+"\ndel output.wav\ncall ffmpeg -y "+sOffset+" -i "+file+" "+sDuration+" -c copy output_insert.wav\n"
        code=code+"call ffmpeg -y -i input.wav -i output_insert.wav -filter_complex \"[0:a]volume=1[a0];[1:a]adelay="
        code=code+str(timecode)+"|"+str(timecode)+",volume="+str(volume)+"[a1];[a0][a1]amix=inputs=2,volume=2[a]\" -map \"[a]\" output_temp.wav\n"

        if start_fadeout > 0:
            code = code + "ffmpeg -i output_temp.wav -af \"afade=t=out:st=" + str(start_fadeout) + ":d=" + str(delay_fadeout) + ":curve=tri\" output.wav\n"
        else:
            code = code + "copy output_temp.wav output.wav\n"

        code = code + "\ndel input.wav\ncopy output.wav input.wav\ndel output_insert.wav\n\n\n"

        self.videoBatchFile =self.videoBatchFile+ code
        return True


    def getSoundFile(self,text:str,lang="fr-FR"):
        return "./speech/voice_" + str(text.__hash__())+"_"+lang+".ogg"



    def subtitle(self,text,position="90vh"):
        delay=0
        if not text in self.histo:
            self.histo.append(text)
            if position=="top":position="10vh"
            delay = self.speak(text)
            self.execute("showSubtitle",text,delay*1000,"font-weight:bolder;font-size:x-large;background-color:white;",position)
            self.wait(delay)
        return delay





    def show(self,id,text=""):
        """

        :param id:
        :param text:
        :return:
        """
        delay=0
        if not self.fastMode:
            elt=self.find(id,0)
            if not elt is None and not text in self.histo:
                delay=self.subtitle(text)
                self.execute("showElement", elt.location.x,elt.location.y,elt.size.width,elt.size.height, "https://moziru.com/images/drawn-number-circle-png-10.png",delay*1000)
                self.wait(delay)
        return delay



    def title(self,title,subtitle="",style="",background="black"):
        """

        :param title:
        :param subtitle:
        :param style:
        :param background:
        :return:
        """
        id_cache="cache_"+str(self.now())
        if not self.fastMode and not title in self.histo:
            if len(background)>0:
                self.insertCache(background,id_cache=id_cache,position=10000)
                self.wait(0.5)

            self.histo.append(title)
            delay=self.speak("<speak>"+title+".<break time=\"1s\"/>"+subtitle+"</speak>")
            self.execute("showTitle",title,subtitle,delay*1000,"color:white")
            self.wait(delay-0.5)
            if len(background) > 0:
                self.removeCache(id_cache)
                self.wait(0.5)



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


    def select(self, elt, value):
        obj=self.browser.select(id=elt)
        if not obj is None:
            obj.select_value(value)
            return True
        return False

    # Retourne la date du jour en secondes
    def now(self):
        rc = datetime.now(tz=None).timestamp()
        return rc

    def log(self,text: str, sep='\n'):
        line: str = str(int(self.now() - self.startLog)) + " : " + text
        print(line)
        #store_log = line + sep + store_log[0:10000]
        return text

    def maximize(self):
        self.browser.window().maximize()
        self.init_zone_capture()


    def insertCache(self,background:str="black",delayInSec=1,position=1000,id_cache=""):
        if background.startswith("http"):
            style = "background:center / cover no-repeat url('" + background + "');background-color:black;)"
        else:
            style = "background-color:" + background

        self.execute("insertCache",delayInSec,style,position,id_cache)

    def removeCache(self,id="TAC_cache"):
        self.execute("removeCache",id)



    def add_click(self):
        self.add_sound("./click.mp3", self.now(), 0.2, 0.6, 0, 0, 0)

