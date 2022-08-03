//
//  AddProductViewController.swift
//  VWNProject
//
//  Created by Mahmoud on 8/3/22.
//

import UIKit

class AddProductViewController: UIViewController {

    //MARK:- Outlets
    @IBOutlet weak var imagesCollectionView : UICollectionView!
    @IBOutlet weak var productName          : UITextField!
    @IBOutlet weak var productInfo          : UITextField!
    @IBOutlet weak var meals                : UITextField!
    @IBOutlet weak var itemType             : UITextField!
    @IBOutlet weak var price                : UITextField!
    // Views
    @IBOutlet weak var productNameView      : UIView!
    @IBOutlet weak var productInfoView      : UIView!
    @IBOutlet weak var MealView             : UIView!
    @IBOutlet weak var itemTypeView         : UIView!
    @IBOutlet weak var priceView            : UIView!
    
    // up and down Buttons
    @IBOutlet weak var mealUpBtn            : UIButton!
    @IBOutlet weak var mealDownBtn          : UIButton!

    @IBOutlet weak var ItemTypeUpBtn        : UIButton!
    @IBOutlet weak var ItemTypeDownBtn      : UIButton!
    
    @IBOutlet weak var priceUpBtn           : UIButton!
    @IBOutlet weak var priceDownBtn         : UIButton!
    
    //MARK:- Properties
    var picker = UIImagePickerController()
    private var mealQuantity     = 0
    private var itemTypeQuantity = 0
    private var priceQ           = 0
            var arrImages        = [UIImage]()
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        textFieldStyle()
        userInterfaceStyle()
        picker.allowsEditing = true
        picker.delegate = self

    }
    
    //MARK:- Methods

    func textFieldStyle() {
        
        productName .layer.cornerRadius = 8
        productInfo .layer.cornerRadius = 8
        meals       .layer.cornerRadius = 8
        itemType    .layer.cornerRadius = 8
        price       .layer.cornerRadius = 8
        
        productName .clipsToBounds      = true
        productInfo .clipsToBounds      = true
        meals       .clipsToBounds      = true
        itemType    .clipsToBounds      = true
        price       .clipsToBounds      = true
        
        productName .setLeftPaddingPoints(22)
        productInfo .setLeftPaddingPoints(22)
        meals       .setLeftPaddingPoints(22)
        itemType    .setLeftPaddingPoints(22)
        price       .setLeftPaddingPoints(22)
    }
    
    func userInterfaceStyle(){

        productNameView.layer.cornerRadius = 8
        productInfoView.layer.cornerRadius = 8
        MealView       .layer.cornerRadius = 8
        itemTypeView   .layer.cornerRadius = 8
        priceView      .layer.cornerRadius = 8
        
    }
    //MARK:- Actions
    
    @IBAction func upButtons(_ sender: UIButton!) {
        
        switch sender.tag {
        case 1:
            mealQuantity += 1
            meals.text = String(mealQuantity)
            print("Meal + 1")
            
        case 2:
            itemTypeQuantity += 1
            itemType.text = String(itemTypeQuantity)
            print("Item Type + 1 ")
        case 3:
            priceQ     += 1
            price.text = String(priceQ)
            print("Price - 1")
        default:
            break
        }
    }
    
    @IBAction func downButtons(_ sender: UIButton!) {
        switch sender.tag {
        case 4:
            mealQuantity    -= 1
            meals.text = String(mealQuantity)
            print("Meal - 1")
        case 5:
            itemTypeQuantity -= 1
            itemType.text = String(itemTypeQuantity)

            print("Item Type - 1 ")
        case 6:
            priceQ     -= 1
            price.text = String(priceQ)
            print("Price - 1")

        default:
            break
        }
    }
    
    
    
}
