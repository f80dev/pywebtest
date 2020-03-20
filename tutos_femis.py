from femis import FemisUser
from utils import words, digits


class TutoFemis:
    users = list()

    def __init__(self,prod=False):
        self.f = FemisUser(prod=prod,fastMode=False)


    def quit(self):
        self.f.stop()
        self.f.quit()
        self.f.close()

    def scenario_create_user(self):
        self.f.capture(title="Création d'un contact externe")
        self.f.login("j.lecanu", "azerty")
        #self.users.append(self.f.create_contact("CONTACT", prenom="Paul", nom="Dudule", email="paul.dudule@gmail.com", phone=digits(8, "06")))
        self.f.stop()


    def scenario_build(self):
        self.f.capture(title="Création d'un étudiant")
        self.f.login("j.lecanu", "azerty",withTitle=False)
        #self.f.create_contact("STUDENT_FI",prenom="Paul",nom="Dudule",email="paul.dudule@gmail.com",complements={"PROMO":"ma promotion"})
        self.f.stop(title="Enregistrement du compte",subtitle="Après validation, le compte étudiant est créé et disponible dans le CRM")


    def scenario_inscription_sacre(self,firstname,lastname,email,password):
        self.f.capture(title="Inscription au parcours SACRe",subtitle="Connexion pour vérification de l'email")
        self.f.go(self.f.domain+"?apcafi=7")
        self.f.subtitle("La première étape consiste à s'inscrire avec son adresse mail")
        self.f.fill_form([firstname,lastname,email,password,password],first="fname",validate="btn btn-primary btn-block btn-lg js-btnSubmit")
        self.f.subtitle("La validation entraîne la vérification de l'email pour envoi d'un lien à ouvrir")
        self.f.click("btn btn-primary btn-close",0)
        self.f.stop(title="Parcours d'inscription")


    def scenario_fill_form(self,login:str,password:str):
        self.f.go(self.f.domain)
        self.f.capture(title="Remplissage du formulaire d'inscription SACRe")
        self.f.subtitle("A tout moment, le candidat peut se connecter pour commencer ou compléter son dossier")
        self.f.login(login, password,withTitle=False,withSubtitle=False)
        self.f.subtitle("Après connexion il retrouve son dossier tel qu'il l'avait laissé")
        self.f.fill_sacre_form(2)
        self.f.stop("L'inscription prend fin après paiement et confirmation")


    def create_profil(self):
        self.f.fastMode = True
        self.users.append(
            self.f.create_contact("CONTACT", [1,"Dudule","04/02/1971","Sophie","", "","","sophie.dudule@gmail.com",digits(8, "06")]))
        self.users.append(
            self.f.create_contact("CONTACT",[0,"Dudule","04/02/1971","Roger","", "","","roger.legumes@gmail.com",digits(8, "06")]))
        self.users.append(
            self.f.create_contact("CONTACT", [0,"Dudule","04/02/1971","Jerome","", "","","jerome.banane@f80.fr",digits(8, "06")]))
        self.users.append(
            self.f.create_contact("CONTACT", [0,"Dudule","04/02/1971","Didier","", "","","didier.canard@f80.fr",digits(8, "06")]))
        self.f.fastMode = False


    def scenario_mailing(self):
        self.f.subtitle("Pour les besoins du parcours, on créé d'autres contacts")
        self.f.login("j.lecanu", "azerty",withTitle=False)
        self.f.capture("mail_campagne", "Parcours d'une campagne de mail",
                       "Création des contacts, création de la campagne et expédition")


        cts = self.f.create_contact_list("Ma Liste_" + words(5),
                                    "Cette liste est utilisé pour la réalisation du toturial OASIS", index_type=8,
                                    lst_contacts=[1,2,3,4],filter="dudule")
        mail_camp = self.f.create_mail_campagn(name="Ma campagne de mail_" + words(6),
                                          description="Campagne utilisée à des fins de test", lst=[0],filter=cts)
        self.f.create_mailing(mail_campagn=mail_camp, type_mailing=1, link_event=1, subject="Mailing de test")
        self.f.create_phone_campaign(name="Ma campagne de telephone", description=words(15), contacts=[cts])

        self.f.stop()


    def scenario_creation_de_stage(self,title,width=1500):
        self.f.size(width,1000)
        self.f.login("j.lecanu", "azerty")
        self.f.capture(title=title,subtitle="Décomposition de la procédure")

        if self.f.create_stage(
                "Ballu",["fonction de stagiaire","","","1924564564874684","Ma caisse d'assurance","456467874561231"],"BAXTER",
                ["12 rue martel","","75010","Paris"],
                ["Paul","Dudule","Chef","0625252525"],
                ["sujet du stage","Comment je me suis réconcillié, ma vie sexuelle / Arnaud Desch","Assistance à la réalisation du scénario",1,"Dudule","Sophie","0606060006","sophie.dudule@gmail.com"],
                [1, "3 jours", "Travail exceptionnel le dimanche et certains jours fériés", "01/07/2020", "01/09/2020",
                 "première période", 1, "120"]):
            self.f.go("#name=INTERNSHIP&type=LIST")
            self.f.show("hover detail",text="Dés validation le stage apparait dans la liste")

        self.f.stop(title="Procédure terminée",subtitle="Le stage peut ensuite être modifié ou simplement supprimé si besoin")
        return True




    def scenario2(self):
        self.f.capture("create_cours","Création d'un cours","Positionnement d'un cours, affectation d'une salle et choix des élèves")
        self.f.login("j.lecanu", "azerty")
        self.f.create_calendar("un si grand soleil","Formation pour tous")
        self.f.stop()
        return True