from commands import *








#init_3players(3)
#reconnexion_achat(2)

from femis import FemisUser




#f=FemisUser("j.lecanu","azerty")
f=FemisUser()
f.tools.capture("connexion")
f.login("j.lecanu","azerty")

f.tools.capture("recherche etudiant")
f.select_etudiant("angelini")

f.tools.stop()

#f.create_campagn("Ma campagne de test","Ceci est une campagne de test réalisé par la recette","Autre")


f.quit()
f.close()
