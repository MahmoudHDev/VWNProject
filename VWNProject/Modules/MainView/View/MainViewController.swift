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
    @IBOutlet weak var buttonsContainer: UIStackView!
    
    //MARK:- View Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        buttonStyle()
        
    }

    //MARK:- Methods
    func buttonStyle(){
        signUpBtn.layer.cornerRadius = 20
        buttonsContainer.layer.cornerRadius = 20
    }
    
    //MARK:- Actions


}

