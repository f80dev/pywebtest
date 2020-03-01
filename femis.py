from tools import Tools


class FemisUser:
    def __init__(self,username="",password="",fastMode=True):
        self.tools = Tools()
        self.start()
        self.tools.fastMode=fastMode
        self.login(username, password)

    def start(self):
        self.tools.maximize()
        self.tools.go("https://testfemis.scolasis.com/")

    def login(self,username,password):
        if len(username)>0 and len(password)>0:
            self.tools.subtitle("Pour se connecter, on utilise son user et mot de passe fourni par l'administrateur")
            self.tools.set_field("login",username,0)
            self.tools.set_field("password",password,0)
            self.tools.click("SubmitLoginBtn")

    def create_campagn(self,name,description="",sender=""):
        self.tools.click("MenuCRM_CAMPAIGN_MAIL")
        self.tools.click("toolbar-link highlight")
        self.tools.set_field("NAME",name,0)
        self.tools.set_field("DESCRIPTION", description,0)
        self.tools.select("form-control col-2",sender)

    def quit(self):
        self.tools.click("nav navbar-nav navbar-left navbar-with-dropdown",1)
        self.tools.click("icon-off")

    def close(self):
        self.tools.browser.close()

    def select_etudiant(self,name):
        self.tools.click("MenuSTUDENT_FI")
        self.tools.set_field("LNAME",name,0)
        self.tools.click("action_button btn-group wide")
        self.tools.click("icon-eye",0)

