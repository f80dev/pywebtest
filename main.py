from random import randint

import tools
from commands import *








#init_3players(3)
#reconnexion_achat(2)

from femis import FemisUser




#f=FemisUser("j.lecanu","azerty")
from tutos_femis import TutoFemis
from utils import tirage, words, digits



#f.capture("login","Première connexion","Utilisation du login et du mot de passe")

#f.delete_contact(type="CONTACT")




tuto=TutoFemis(prod=True)
#tuto.f.login("h.hoareau","Hh4271!!",False,False)
#tuto.create_profil()
#tuto.scenario_inscription_sacre("paul","dudule","paul.dudule@gmail.com","Hh4271!!")
#tuto.scenario_inscription_sacre("roger","legumes","roger.legumes@gmail.com","Hh4271!!")
tuto.scenario_fill_form("rlegumes","Hh4271!!")
#tuto.scenario_creation_de_stage()
#tuto.scenario_creation_de_stage("Affectation d'un stage",1500)
#tuto.scenario_creation_de_stage("Affectation d'un stage sur mobile",600)
tuto.scenario_mailing()

tuto.quit()




#f.create_society(["ma societe","F80",0,"124564",0,0,"Informatique"])
pass



