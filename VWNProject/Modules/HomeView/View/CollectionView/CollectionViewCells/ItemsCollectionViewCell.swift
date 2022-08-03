//
//  ItemsCollectionViewCell.swift
//  VWNProject
//
//  Created by Mahmoud on 8/3/22.
//

import UIKit

class ItemsCollectionViewCell: UICollectionViewCell {
    //MARK:- Outlets
    @IBOutlet weak private var containerV   : UIView!
    @IBOutlet weak private var itemImg      : UIImageView!
    @IBOutlet weak private var itemLbl      : UILabel!
    @IBOutlet weak private var priceLbl     : UILabel!
    
    //MARK:- Nib init
    override func awakeFromNib() {
        super.awakeFromNib()
        containerV.layer.cornerRadius = 20
        itemImg.layer.cornerRadius = 20
    }
    
    //MARK:- Methods
    func setCell(itemLbl: String, itemImg: UIImage, priceLbl: String) {
        self.itemLbl.text   = itemLbl
        self.priceLbl.text  = priceLbl
        self.itemImg.image  = itemImg
    }
}
