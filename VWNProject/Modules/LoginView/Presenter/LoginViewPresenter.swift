//
//  LoginViewPresenter.swift
//  VWNProject
//
//  Created by Mahmoud on 8/2/22.
//

import Foundation


//MARK:- Protocol
protocol LoginViewPr {
    // Methods go here
}

//MARK:- Presenter

class LoginViewPresenter {
    //MARK:- Properties
    var view:LoginViewPr?
    
    //MARK:- Init
    init(view: LoginViewPr) {
        self.view = view
    }
    //MARK:- Methods
    
    // Login Logic

}
