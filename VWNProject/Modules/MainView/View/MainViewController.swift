//
//  ViewController.swift
//  VWNProject
//
//  Created by Mahmoud on 8/2/22.
//

import UIKit

class MainViewController: UIViewController {
    //MARK:- Outlets
    @IBOutlet weak var signUpBtn    : UIButton!
    @IBOutlet weak var logInBtn     : UIButton!
    
    //MARK:- View Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        buttonStyle()
        
    }

    //MARK:- Actions

    func buttonStyle(){
        signUpBtn.layer.cornerRadius = 25
        logInBtn.layer.cornerRadius = 25
    }

}

