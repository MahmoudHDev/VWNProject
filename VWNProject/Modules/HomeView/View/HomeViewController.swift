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
    var categories = [CatgoriesModel]()
    var arrLists = ["All", "Plates", "Hot Drinks", "Iced Coffee"]
    
    //MARK:- View Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionViewConfig()
        self.textFieldStyle()
        self.setCategoriesModel()
    }
    
    //MARK:- Methods
    func setCategoriesModel() {
        self.categories = [
            CatgoriesModel(isSelected: true, title: "Breakfast"),
            CatgoriesModel(isSelected: false, title: "Dinner"),
            CatgoriesModel(isSelected: false, title: "Desserts"),
        ]
    }
    
    func textFieldStyle() {
        searchTextField.attributedPlaceholder = NSAttributedString(string: "Search",
                                                                   attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
    }
    
    //MARK:- Actions
    @IBAction func addProductBttn() {
        let storyBoard = UIStoryboard(name: "AddProduct", bundle: nil).instantiateViewController(identifier: "addProduct")
        self.present(storyBoard, animated: true, completion: nil)
    }

}
