from random import randint

import tools
from commands import *








#init_3players(3)
#reconnexion_achat(2)

from femis import FemisUser




#f=FemisUser("j.lecanu","azerty")
from mural import Mural
from tutos_femis import TutoFemis
from utils import random_name

#f.capture("login","Première connexion","Utilisation du login et du mot de passe")

#f.delete_contact(type="CONTACT")


# if False:
#     mural=Mural()
#     mural.capture(title="Tutoriel Mural",subtitle="Prise en main rapide dans le cadre d'un atelier connecté : la Fresque du Climat",
#                   background="https://f80dev.github.io/CommonSenseWebSite/img/fond_fresque.jpg")
#     mural.login(username="emilie.pommier@commonsense-conseil.com", password="Herve4271!")
#     #mural.video("https://interactive-examples.mdn.mozilla.net/media/examples/flower.webm",100,100,500,300,5,True)
#     mural.open_template(1)
#     mural.explain_sidebar()
#     mural.explain_arrow_tools()
#     mural.quit()


tuto=TutoFemis(prod=True)
tuto.f.login("h.hoareau","Hh4271!!",False,False)
#tuto.create_profil("CONTACT",["sophie.dudule@gmail.com","paul.dudule@gmail.com","roger.legumes@gmail.com","rv@f80.fr"])
#tuto.scenario_inscription_sacre("paul","dudule","paul.dudule@gmail.com","Hh4271!!")
#tuto.scenario_inscription_sacre("roger","legumes","roger.legumes@gmail.com","Hh4271!!")
#tuto.scenario_creation_de_stage("Affectation d'un stage",1500)
#tuto.f.delete_contacts("STUDENT","legumes","roger")

emails=[]
for i in range(0,15):
    emails.append({"email":"pro_"+random_name()+".dudule@gmail.com"})

tuto.create_profil("STUDENT_FC",emails)

#tuto.scenario_mailing(_type="STUDENT_FI")

#tuto.create_profil(type="PROF",profils=[{"email":"sophie.dudule@gmail.com","societe":"baxter"}])
#tuto.create_stage()
#tuto.scenario_societe()
#tuto.dedoublonnage(["tcancelli","bcardinal","dcharron","achemin","echeyroux","kchir","hcohen","ccoucoureux","ecurtis","bdartois","ldecaster","cdelaunay","cdennebouy","adevillaire","adevulder","cdietrich","ydocouto","jdurif","lfanara","rfauvel","mfournier","lfrankias","cgalois","agneouchev","egodard","rgoldszal","ngoubet","ngrand","mhenochsberg","mhermelin","njactel","fkarimpour","vkeungkeosiane","skhoukh","rkirpicenko","llavalette","mlefeuvre","alejault","elevy","nlincy","mmancelneto","amaslah","tmatignon","mmilojevic","emommessin","emoreau","imorlat","smoundy","cneri","onovarese","ioger","molivier","eolounou","qpaquet","nparreaux","eparsegian","zpernet","cpezetamirat","cpin","apirotte","gplancquaert","hpokorny","lpu","hraffouldecomarmond","jrebena","ireille","treusa","jrevault","iriera","prigoux","mrolland","tropert","hrosseletruiz","mrossi","lrousseau","rseffacene","asoussana","jsquire","ksturm","asuzanne","steboul","otrably","furbani","sverge","mvettese","avigier","gvoigt","ealluynfride","janer","sangelini","lbapt","sbarandiaran","abargain","fbeillevaire","rbertino","mblancochaparro","aboileau","cboisivon"])
#tuto.quit()




#f.create_society(["ma societe","F80",0,"124564",0,0,"Informatique"])
pass



