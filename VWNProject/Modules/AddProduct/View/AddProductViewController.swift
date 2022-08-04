//
//  AddProductViewController.swift
//  VWNProject
//
//  Created by Mahmoud on 8/3/22.
//

import UIKit
import CoreData

class AddProductViewController: UIViewController {

    //MARK:- Outlets
    @IBOutlet weak var imagesCollectionView : UICollectionView!
    @IBOutlet weak var productName          : UITextField!
    @IBOutlet weak var productInfo          : UITextField!
    @IBOutlet weak var meals                : UITextField!
    @IBOutlet weak var itemType             : UITextField!
    @IBOutlet weak var price                : UITextField!
    @IBOutlet weak var doneBtn              : UIButton!
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
            var products : [NSManagedObject] = []

    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textFieldStyle()
        self.userInterfaceStyle()
        self.collectionViewConfig()
        self.picker.allowsEditing = true
        self.picker.delegate = self

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
    
    func upAndDownBttnsStyle() {
        
        mealUpBtn.layer.cornerRadius        = 0.5 * mealUpBtn.bounds.size.width
        mealDownBtn.layer.cornerRadius      = 0.5 * mealDownBtn.bounds.size.width
        ItemTypeUpBtn.layer.cornerRadius    = 0.5 * ItemTypeUpBtn.bounds.size.width
        ItemTypeDownBtn.layer.cornerRadius  = 0.5 * ItemTypeDownBtn.bounds.size.width
        priceUpBtn.layer.cornerRadius       = 0.5 * priceUpBtn.bounds.size.width
        priceDownBtn.layer.cornerRadius     = 0.5 * priceDownBtn.bounds.size.width
        
    }
    
    func userInterfaceStyle() {
        doneBtn.layer.cornerRadius          = 8
        productNameView.layer.cornerRadius  = 8
        productInfoView.layer.cornerRadius  = 8
        MealView.layer.cornerRadius         = 8
        itemTypeView.layer.cornerRadius     = 8
        priceView.layer.cornerRadius        = 8
        
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
            print("Price + 1")
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
    
    
    @IBAction func cancelButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

    @IBAction func doneButton(_ sender: UIButton) {
        // Add to coreData
        guard let name  =  productName.text,
              let info  = productInfo.text,
              let meal  = meals,
              let type  = itemType.text,
              let price = price else {return}
        
        
        let productModel = ProductModel(productName: name,
                                        productInfo: info,
                                        itemType: type,
                                        meals: Int(meal.text!)  ?? 0,
                                        price: Int(price.text!) ?? 0)
        self.saveData(productModel: productModel)   // Save to CoreData
    }
    
    
}
