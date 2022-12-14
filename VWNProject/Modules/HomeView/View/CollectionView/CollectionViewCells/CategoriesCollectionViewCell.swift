//
//  CategoriesCollectionViewCell.swift
//  VWNProject
//
//  Created by Mahmoud on 8/2/22.
//

import UIKit

class CategoriesCollectionViewCell: UICollectionViewCell {
    //MARK:- Outlets
    @IBOutlet weak private var titleLabel: UILabel!
    @IBOutlet weak var containerV   : UIView!
    
    //MARK:- nib Init
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        containerV.layer.cornerRadius = 20
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 0 , left: 0, bottom: 0 , right: 17))
    }
    //MARK:- Methods
    func setCell(title: String, isSelected: Bool) {
        self.titleLabel.text = title
        if isSelected {
            self.containerV.backgroundColor = UIColor(named: "Marron")
            self.titleLabel.textColor = .white
        }
    }

}
