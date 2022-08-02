//
//  MainViewPresenter.swift
//  VWNProject
//
//  Created by Mahmoud on 8/2/22.
//

import Foundation

//MARK:- Protocol
protocol MainViewPr {
    // Methods go here
}

//MARK:- MainView Presenter
class MainViewPresenter {
    
    //MARK:- Properties
    var view: MainViewPr?
    //MARK:- Init
    init(view: MainViewPr) {
        self.view = view
    }

    //MARK:- Methods

}
