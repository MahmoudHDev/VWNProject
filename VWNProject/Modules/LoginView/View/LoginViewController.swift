//
//  LoginViewController.swift
//  VWNProject
//
//  Created by Mahmoud on 8/2/22.
//

import UIKit

class LoginViewController: UIViewController {
    //MARK:- Outlets
    @IBOutlet weak var usernameTextField     : UITextField!
    @IBOutlet weak var passwordTextField     : UITextField!
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
        self.usernameTextField.text = "admin@admin.com"
        self.passwordTextField.text = "password"
        self.userInterfaceStyle()
        
    }
    
    //MARK:- Actions
    
    @IBAction func loginBtns(_ sender: UIButton) {
        
        
        
        // Login to database...
        let email = self.usernameTextField.text ?? ""
        let password = self.passwordTextField.text ?? ""
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
        usernameTextField.layer.masksToBounds    = true
        passwordTextField.layer.masksToBounds    = true
        
        usernameTextField.layer.cornerRadius     = 8
        passwordTextField.layer.cornerRadius     = 8
        signInBtn.layer.cornerRadius    = 8
        
        usernameTextField.setLeftPaddingPoints(36)
        passwordTextField.setLeftPaddingPoints(36)
        
    }
    
}

//MARK:- Presenter
extension LoginViewController: LoginViewPr {
    // Presenter Methods
}

