//
//  LoginViewController.swift
//  VWNProject
//
//  Created by Mahmoud on 8/2/22.
//

import UIKit

class LoginViewController: UIViewController {
    //MARK:- Outlets
    @IBOutlet weak var username     : UITextField!
    @IBOutlet weak var password     : UITextField!
    @IBOutlet weak var signInBtn    : UIButton!
    
    //MARK:- Properties
    var presenter: LoginViewPresenter?
    private let dummyDatabase = [User(email: "admin@admin.com", password: "password")]
    var sceneDelegate: SceneDelegate? {
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
              let delegate = windowScene.delegate as? SceneDelegate else { return nil }
        return delegate
    }
    //MARK:- View
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = LoginViewPresenter(view: self)
        
        userInterfaceStyle()
        
    }
    
    //MARK:- Actions
    
    @IBAction func loginBtns(_ sender: UIButton) {
        
        
        
        // Login to database...
        let email = self.username.text ?? ""
        let password = self.password.text ?? ""
        if let user = dummyDatabase.first(where: { user in
            user.email == email && user.password == password
        }) {
            print("hi \(user.email)")            
            if let homeVC = UIStoryboard(name: "HomeView", bundle: nil).instantiateViewController(withIdentifier: "HomeView") as? UITabBarController {
                UserDefaults.standard.set(true, forKey: "isFirstLogin")
                if #available(iOS 13.0, *) {
                    self.sceneDelegate?.window?.rootViewController = homeVC
                    self.sceneDelegate?.window?.makeKeyAndVisible()
                } else {
                    let appdelegate = UIApplication.shared.delegate as! AppDelegate
                    appdelegate.window!.rootViewController = homeVC
                }
            }
        }
        
        
    }
    
    
    //MARK:- Methods
    func userInterfaceStyle() {
        username.layer.masksToBounds    = true
        password.layer.masksToBounds    = true
        
        username.layer.cornerRadius     = 8
        password.layer.cornerRadius     = 8
        signInBtn.layer.cornerRadius    = 8
        
        username.setLeftPaddingPoints(36)
        password.setLeftPaddingPoints(36)
        
    }
    
}

//MARK:- Presenter
extension LoginViewController: LoginViewPr {
    // Presenter Methods
}

