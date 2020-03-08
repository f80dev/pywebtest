from selenium.webdriver import ActionChains
from selenium.webdriver.common.keys import Keys

from tools import Tools
from utils import extract, tirage


class FemisUser(Tools):
    def __init__(self,username="",password="",fastMode=True):
        super().__init__()
        self.start()
        self.fastMode=fastMode
        self.login(username, password)

    def start(self):
        self.maximize()
        self.go("https://testfemis.scolasis.com/")


    def removeAlert(self):
        zone=self.find("NotInProdAlert")
        self.click(self.find("button",0,zone))


    def login(self,username,password):
        if len(username)>0 and len(password)>0:
            if self.find("NotificationMiniCenter",onlyId=True) is None:
                self.title("Connexion à OASIS", "usage du login et du mot de passe")
                self.subtitle("Pour se connecter, on utilise l'identifiant et le mot de passe fourni par l'administrateur à la création du compte")
                self.fill_form([username,password])
                self.show("themeMainColor pull-right flipLink","En cas d'oublie, on peut toujours se faire renvoyer son mot de passe")
                rc=self.click("SubmitLoginBtn")
                self.subtitle("L'utilisateur est automatiquement reconnecté sur sa dernière page consulté")
                self.removeAlert()
                return rc
            else:
                self.log("Connexion déjà établie")

        return False

    def create_campagn(self,name,description="",sender=""):
        self.click("MenuCRM_CAMPAIGN_MAIL")
        self.click("toolbar-link highlight")
        self.set_field("NAME",name,0)
        self.set_field("DESCRIPTION", description,0)
        self.select("form-control col-2",sender)
        self.click("btn btn-lg btn-danger floating_toolbar",0)

    def quit(self):
        self.click("nav navbar-nav navbar-left navbar-with-dropdown",1)
        self.click("icon-off")

    def close(self):
        self.browser.close()


    def select_contact(self,type,login):
        self.go("#type=LIST&name="+type+"&CODE="+login)
        self.click("icon-eye",0)

    def select_contact(self,name):
        self.click("MenuSTUDENT_FI")
        self.set_field("LNAME",name,0)
        self.click("action_button btn-group wide")
        self.click("icon-eye",0)


    def create_profil(self, vals):
        self.go("#type=INSERT&name=PROFILE")
        self.fill_form(values=vals,first="CODE")
        return vals[0]


    def create_bloc(self, vals,desc):
        self.go("#type=INSERT&name=MODULE")
        self.fill_form(values=vals,first="CODE")
        self.click("MODULEdescription")
        self.browser.send_keys(Keys.TAB)
        self.fill_form(values=desc, first="CODE")
        self.click("CODE_PROFILEPROFILEInput")
        self.select_in_list([3,2])
        self.find("PropertyFields_PROFILE").elements(tag_name="button")[1].click()
        return vals[0]



    def create_society(self,vals):
        if not self.nav("name=COMPANY"):
            self.click(self.find("MenuCOMPANY").element(tag_name="a"))

        if not self.nav("type=INSERT&name=COMPANY"):
            elts=self.find("box-header").elements(class_name="toolbar-link highlight")
            self.click(elts[0])

        self.fill_form("tab-content",vals,"btn btn-lg btn-danger floating_toolbar")

    def create_contact(self, type,prenom,nom,email,subtitle="",phone="",address=""):
        self.title("Création de contact",subtitle=subtitle)
        self.subtitle("On choisi le type de contacte dans le menu UTILISATEUR")
        self.go("#type=INSERT&name="+type)
        self.subtitle("On va renseigner les champs obligatoires Nom, Prénom et adresse Email")
        self.fill_form(["",nom,"",prenom,"","","",email,"",phone,address],first="GENDER",validate="btn btn-lg btn-danger floating_toolbar")
        self.subtitle("La validation entraine la création du contact",position="top")
        self.waitForURL("&code=")
        rc= extract(self.browser.url,"&code=","&")
        return rc

    def delete_contact(self, type,login):
        self.title("Suppression d'un contact")
        self.go("#type=LIST&name=" + type + "&CODE=" + login)
        self.click("btn-delete tip", 0,text="L'usage de la poubelle permet la suppression directement depuis la liste")
        self.click("btn btn-danger btn-delete",0)





    def create_contact_list(self,name,description="",index_type=8,lst_contacts:list=[1]):
        """
        :param name:
        :param description:
        :param index_type:
        :return:
        """
        self.title("Création d'une liste de contacts")
        self.go("#type=INSERT&name=CRM_LISTING")
        self.subtitle("Chaque liste de contact doit avoir un nom et une éventuelle description")
        self.fill_form([name,description],first="NAME",validate="ENTER")

        zone=self.find("assoc_tab nav nav-tabs",0)

        self.show(zone,"Cette zone contient l'ensemble des types de contacts pouvant être insérés. On peut également ajouter les contacts d'autres campagnes")

        option=self.find("set_assoc_tab",index_type,zone)
        if self.click(option,text="On choisit le type de contact à insérer dans la liste"):
            self.create_link(id_zone="PropertyFields_CONTACT",lst=lst_contacts,text="Sélectionner des contacts à inclure dans la liste")
            return name
        else:
            return None



    def create_mail_campagn(self, name, description,lst):
        self.title("Création d'une campagne de mail","Associé un mail type avec un ensemble de contacts")
        self.go("#type=INSERT&name=CRM_CAMPAIGN_MAIL")
        self.fill_form([name, description,1], first="NAME",validate="btn btn-lg btn-danger floating_toolbar")
        self.create_link("PropertyFields_CRM_LISTING",lst,"Lié des contacts à la campagne","La liste de contacts est maintenant associé au la campagne")
        return name


    def create_calendar(self,item,title,comment=""):
        self.go("#codepage=CALENDAR")
        filter=self.find("input",0,self.find("CalInsertdataTable_courses_filter"))
        self.show(filter,"La liste des cours étant importante, il est préférable d'utiliser le filtre pour retrouver rapidement le cours à planifier")
        self.clavier(item,filter)
        elt=self.find("div",0,self.find("CalInsertdataTable_courses"))
        self.show(elt,"On va sélectionner le cours, présent dans la liste après application du filtre")
        self.subtitle("On sélectionne la semaine ou l'on souhaite positionner le cours")
        for i in range(2,int(tirage(7))):
            self.click("glyphicon glyphicon-chevron-right",0)

        self.subtitle("Puis on le fait glisser sur le jour souhaité")
        elt.drag_and_drop_by(400, 0)

        elt=self.find("fc-time-grid-event fc-v-event fc-event fc-start fc-end fc-draggable fc-resizable",0)
        self.click(elt,"On peut maintenant lui affecter des élèves, ou un cours")
        self.fill_form([title,comment],first="TITLE_FR")
        self.click("btn btn-default btn-sm close_popup",0)



    def create_link(self, id_zone, lst, text,show_result=""):
        """
        Permet de créer des liens avec les entités référentes
        :param id_zone:
        :param lst:
        :param text:
        :return:
        """
        zone = self.find(id_zone, 0)
        button = self.find("button", 0, zone)
        self.click(button, text)
        self.select_in_list(lst)
        self.click(self.find("button", 1, zone))
        if len(show_result)>0:
            self.show("table table-striped table-hover",show_result)



    def create_mailing(self, mail_campagn, type_mailing, link_event,subject,title="",subtitle="",send=False,export=False):
        self.title("Finalisation du mailing","Selection du contenu & expédition")
        self.go("#type=INSERT&name=MAILING")
        self.fill_form([mail_campagn,type_mailing,link_event],first="CODE_CRM_CAMPAIGN")
        self.click(self.find("a",1,self.find("tab-form nav nav-tabs",0)))
        self.fill_form([subject, title, subtitle], first="SUBJECT")
        self.click("btn btn-lg btn-danger floating_toolbar",0)
        if send:
            self.openSideMenu(pave=2,option=1)
            self.click("btn btn-lg btn-danger",0)
        if export:
            self.openSideMenu(pave=1, option=0)


    def create_phone_campaign(self, name, description, contacts):
        self.title("Fabrication d'une campagne d'appels téléphonique")
        self.go("#type=INSERT&name=CRM_CAMPAIGN_PHONE")
        self.fill_form([name,description],first="NAME",validate="ENTER")
        self.create_link("PropertyFields_CRM_LISTING",contacts,"On ajoute les contacts à joindre par téléphone","La liste de contacts sont maintenant associé à la campagne")
        self.openSideMenu(pave=2,option=0)

    def openSideMenu(self, pave, option):
        zone = self.find("side_content-links", pave, self.find("SideContent"))
        self.click(self.find("a", option, zone))
















