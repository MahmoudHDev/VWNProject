//
//  AddImgCollectionViewCell.swift
//  VWNProject
//
//  Created by Mahmoud on 8/3/22.
//

import UIKit

class AddImgCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var containerV: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        containerV.layer.cornerRadius = 8
    }

}
