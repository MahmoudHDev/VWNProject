//
//  AddProduct+CoreData.swift
//  VWNProject
//
//  Created by Mahmoud on 8/4/22.
//

import UIKit
import CoreData

extension AddProductViewController {
    //MARK:- Save Data

    func saveData(productModel: ProductModel) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {return}
        
        //1
        let managedContext = appDelegate.persistentContainer.viewContext
        
        //2
        let entity = NSEntityDescription.entity(forEntityName: "Product", in: managedContext)!
        
        let product = NSManagedObject(entity: entity, insertInto: managedContext)
        //3
        
        let values: [String: Any] = [
            "productName"   : productModel.productName ?? "Product Name",
            "productInfo"   : productModel.productInfo ?? "Product Info",
            "price"         : productModel.price ?? 0 ,
            "meals"         : productModel.meals ?? 0,
            "itemType"      : productModel.itemType ?? "Meal"
        ]
        
        product.setValuesForKeys(values)
        do{
            try managedContext.save()
            products.append(product)
        }catch let error as NSError {
            print("Couldn't save the data \(error)")
        }

    }
        
}
