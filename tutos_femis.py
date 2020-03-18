from femis import FemisUser
from utils import words, digits


class TutoFemis:
    users = list()

    def __init__(self):
        self.f = FemisUser(fastMode=False)


    def quit(self):
        self.f.stop()
        self.f.quit()
        self.f.close()

    def scenario_create_user(self):
        self.f.capture(title="Création d'un contact externe")
        self.f.login("j.lecanu", "azerty")
        self.users.append(
            self.f.create_contact("CONTACT", prenom="Paul", nom="Dudule", email="paul.dudule@gmail.com", phone=digits(8, "06")))
        self.f.stop()


    def scenario_build(self):
        self.f.capture(title="Création d'un étudiant")
        self.f.login("j.lecanu", "azerty",withTitle=False)
        #self.f.create_contact("STUDENT_FI",prenom="Paul",nom="Dudule",email="paul.dudule@gmail.com",complements={"PROMO":"ma promotion"})
        self.f.stop(title="Enregistrement du compte",subtitle="Après validation, le compte étudiant est créé et disponible dans le CRM")


    def scenario_inscription_sacre(self,firstname,lastname,email,password):
        self.f.capture(title="Inscription au parcours SACRe",subtitle="Connexion pour vérification de l'email")
        self.f.go("https://femis.scolasis.com?apcafi=7")
        self.f.subtitle("La première étape consiste à s'inscrire avec son adresse mail")
        self.f.fill_form([firstname,lastname,email,password,password],first="fname",validate="btn btn-primary btn-block btn-lg js-btnSubmit")
        self.f.subtitle("La validation entraîne la vérification de l'email pour envoi d'un lien à ouvrir")
        self.f.click("btn btn-primary btn-close",0)
        self.f.stop(title="Parcours d'inscription")


    def scenario_fill_form(self,login:str,password:str):
        self.f.go("https://femis.scolasis.com/")
        self.f.capture(title="Remplissage du formulaire d'inscription SACRe")
        self.f.subtitle("A tout moment, le candidat peut se connecter pour commencer ou compléter son dossier")
        self.f.login(login, password,withTitle=False,withSubtitle=False)
        self.f.subtitle("Après connexion il retrouve son dossier tel qu'il l'avait laissé")
        self.f.fill_sacre_form(2)
        self.f.stop("L'inscription prend fin après paiement et confirmation")



    def scenario_mailing(self):
        self.f.subtitle("Pour les besoins du parcours, on créé d'autres contacts")
        self.f.login("j.lecanu", "azerty",withTitle=False)
        self.f.capture("mail_campagne", "Parcours d'une campagne de mail",
                       "Création des contacts, création de la campagne et expédition")

        # self.f.fastMode = True
        # self.users.append(self.f.create_contact("CONTACT", "Sophie", "Dudule", "sophie.dudule@gmail.com", phone=digits(8, "06")))
        # self.users.append(self.f.create_contact("CONTACT", "Roger", "Dudule", "roger.legume@gmail.com", phone=digits(8, "06")))
        # self.users.append(self.f.create_contact("CONTACT", "Jerome", "Dudule", "jerome.banane@f80.fr", phone=digits(8, "06")))
        # self.users.append(self.f.create_contact("CONTACT", "Didier", "Dudule", "didier.canard@f80.fr", phone=digits(8, "06")))
        # self.f.fastMode = False

        cts = self.f.create_contact_list("Ma Liste_" + words(5),
                                    "Cette liste est utilisé pour la réalisation du toturial OASIS", index_type=8,
                                    lst_contacts=["dudule", 1,2,3,4])
        mail_camp = self.f.create_mail_campagn(name="Ma campagne de mail_" + words(6),
                                          description="Campagne utilisée à des fins de test", lst=[cts])
        self.f.create_mailing(mail_campagn=mail_camp, type_mailing=1, link_event=1, subject="Mailing de test")
        self.f.create_phone_campaign(name="Ma campagne de telephone", description=words(15), contacts=[cts])

        self.f.stop()


    def scenario_creation_de_stage(self):
        self.f.login("j.lecanu", "azerty")
        self.f.capture(title="Création d'un stage")
        #self.f.create_contact(prenom="Paulo",nom="Dudule",email="paul.dudule@gmail.com")
        if self.f.create_stage(
            [1, "fonction de stagiaire"],
            "BAXTER",
            ["12 rue martel","","75010","Paris"],
            ["Paul","Dudule","Chef","0625252525"],
            ["sujet du stage"]):
            self.f.go("#name=INTERNSHIP&type=LIST")
            self.f.show("hover detail",text="Après validation le stage apparait dans la liste des stages comme une liaison entre un étudiant et une société")

        self.f.stop(title="Fin")
        return True




    def scenario2(self):
        self.f.capture("create_cours","Création d'un cours","Positionnement d'un cours, affectation d'une salle et choix des élèves")
        self.f.login("j.lecanu", "azerty")
        self.f.create_calendar("un si grand soleil","Formation pour tous")
        self.f.stop()
        return True