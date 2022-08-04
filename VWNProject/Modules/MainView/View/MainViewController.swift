//
//  ViewController.swift
//  VWNProject
//
//  Created by Mahmoud on 8/2/22.
//

import UIKit

class MainViewController: UIViewController {
    //MARK:- Outlets
    @IBOutlet weak var signUpBtn        : UIButton!
    @IBOutlet weak var logInBtn         : UIButton!
    @IBOutlet weak var buttonsContainer : UIStackView!
    
    //MARK:- Propertes
    var presenter: MainViewPresenter?
    
    //MARK:- View Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = MainViewPresenter(view: self)
        buttonStyle()
        
    }

    //MARK:- Methods
    
    func buttonStyle(){
        signUpBtn.layer.cornerRadius = 20
        buttonsContainer.layer.cornerRadius = 20
    }
    
    //MARK:- Actions
    @IBAction func logButtons(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            // Show login View
            let storyBoard = UIStoryboard.init(name: "LoginView", bundle: nil).instantiateViewController(identifier: "loginView")
            self.navigationController?.pushViewController(storyBoard, animated: true)
        case 1:
            // Show sign Up View
        print("Show Sign up View")
        default:
            print("Do something")
        }
    }

}

//MARK:- Extension
extension MainViewController: MainViewPr {
    // Methods implementition
}
