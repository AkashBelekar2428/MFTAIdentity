
import UIKit
import ObjectMapper
import SVProgressHUD
import MFTAIdentity



//android-authentication = ec4392de-47ac-4632-baf6-04dbf49f064f
//ios-authentication = 7f627b8a-d174-4679-bb37-4414afd34ee2
//web-authentication = 8344bbbe-96d1-49ad-aa26-244f283bc7e0

class ViewController: UIViewController,TAMultiAuthFactorSuccess {
   
    var middleLayer : Authenticator?
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let startAuthUrl = "https://ottr.chavadi.com/auth/api/v1/user/startauthentication"
        let authUrl = "https://ottr.chavadi.com/auth/api/v1/user/authenticate"
        let resendPINUrl = "https://ottr.chavadi.com/auth/api/v1/user/resendpin"
        
       
        let service = APIServices.init()
        self.middleLayer = Authenticator.init(webservice: service, authenticateUrl: authUrl, startauthenticateUrl: startAuthUrl, resendPINUrl: resendPINUrl, controller: self)
        
        let requestModel = TAAuthenticateStartRequest.init()
        
        let model = TAAuthenticateStartModelObj.init()
        model.clientId = "ec4392de-47ac-4632-baf6-04dbf49f064f"
        model.clientScope = "ottr-apis"
        requestModel.model = model
        
        self.middleLayer?.delegate = self
        self.middleLayer?.InitialAuthetication(startAuthModel: requestModel)
        
//        let authAuth = AuthenticationLogIn()
//        authAuth.controller = self
//        authAuth.authType = .USERNAME_PASSWORD
//        authAuth.setDefaultThems()
//        authAuth.frame = self.view.bounds
//       // self.view.addSubview(authAuth)
//
//        let authEmail = Email_Address()
//        authEmail.controller = self
//        authEmail.setEmailDefaultThemes()
//        authEmail.frame = self.view.bounds
//        //self.view.addSubview(authEmail)
//
//
//        let authMob = Mobile_Number()
//        authMob.controller = self
//        authMob.setMobileDefaultThemes()
//        authMob.frame = self.view.bounds
////        self.view.addSubview(authMob)
//
//        let authPIN = PINView()
//        authPIN.authTypes = .MOBILE_PIN
//        authPIN.controller = self
//        authPIN.setPINDefaultThemes()
//        authPIN.frame = self.view.bounds
        
      // self.view.addSubview(authPIN)
        
        
    }
    
    func TAAuthFactorCompletedWithToken(token: TAAuthGenericResponseTokenObj) {
        print("Auth success with token =====> \(token.token)")
        
        let authSuccess = AuthenticationSuccess.init()
        authSuccess.modalPresentationStyle = .fullScreen
        present(authSuccess, animated: true)
    }
    

}

