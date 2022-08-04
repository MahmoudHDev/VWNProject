//
//  ImagesCollectionViewCell.swift
//  VWNProject
//
//  Created by Mahmoud on 8/3/22.
//

import UIKit

class ImagesCollectionViewCell: UICollectionViewCell {
    //MARK:- Properties
    @IBOutlet weak var Itemimage    : UIImageView!
    @IBOutlet weak var removeBtn    : UIButton!
    
    var deleteImg:(()->())?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        Itemimage.layer.cornerRadius = 8
        // Initialization code
    }
    
    @IBAction func removeImg(_ sender: UIButton) {
        self.deleteImg?()
    }
    
}
