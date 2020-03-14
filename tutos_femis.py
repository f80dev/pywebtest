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
        self.f.login("j.lecanu","azerty")
        self.f.create_contact("STUDENT_FI",prenom="Paul",nom="Dudule",email="paul.dudule@gmail.com")


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
        self.f.capture(title="Création d'un stage")
        self.f.login("j.lecanu", "azerty")
        self.f.create_stage([1, "fonction de stagiaire"])



    def scenario2(self):
        self.f.capture("create_cours","Création d'un cours","Positionnement d'un cours, affectation d'une salle et choix des élèves")
        self.f.login("j.lecanu", "azerty")
        self.f.create_calendar("un si grand soleil","Formation pour tous")
        self.f.stop()
        return True