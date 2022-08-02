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
    
    //MARK:- View
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = LoginViewPresenter(view: self)
        
        userInterfaceStyle()

    }
    
    //MARK:- Actions

    
    //MARK:- Methods
    func userInterfaceStyle() {
        username.layer.masksToBounds    = true
        password.layer.masksToBounds    = true
        
        username.layer.cornerRadius     = 25
        password.layer.cornerRadius     = 25
        signInBtn.layer.cornerRadius    = 25
    }
    
}

//MARK:- Presenter
extension LoginViewController: LoginViewPr {
    
}
