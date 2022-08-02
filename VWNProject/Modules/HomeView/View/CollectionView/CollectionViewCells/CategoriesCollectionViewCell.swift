//
//  CategoriesCollectionViewCell.swift
//  VWNProject
//
//  Created by Mahmoud on 8/2/22.
//

import UIKit

class CategoriesCollectionViewCell: UICollectionViewCell {
    //MARK:- Outlets
    @IBOutlet weak private var title: UILabel!
    
    //MARK:- nib Init
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    //MARK:- Methods
    func setCell(title: String) {
        self.title.text = title
    }

}
