//
//  HomeViewController.swift
//  VWNProject
//
//  Created by Mahmoud on 8/2/22.
//

import UIKit

class HomeViewController: UIViewController {
    //MARK:- Outlets
    @IBOutlet weak var searchTextField          : UITextField!
    @IBOutlet weak var categoriesCollectionView : UICollectionView!
    @IBOutlet weak var listsCollectionView      : UICollectionView!
    @IBOutlet weak var productsCollectionView   : UICollectionView!
    
    
    //MARK:- Properties
    var arrCategories   = ["Breakfast", "Dinner", "Desserts"]
    var arrLists        = ["All", "Plates", "Hot Drinks", "Iced Coffee"]
    
    //MARK:- View Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewConfig()
        textFieldStyle()
    }
    
    //MARK:- Methods
    
    func textFieldStyle() {
        searchTextField.attributedPlaceholder = NSAttributedString(string: "Search",
                                                                   attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
    }
}
