//
//  Home+CollectionView.swift
//  VWNProject
//
//  Created by Mahmoud on 8/2/22.
//

import UIKit

extension HomeViewController: UICollectionViewDelegate,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    //MARK:- Collection View Configuration
    func collectionViewConfig() {
        // delegate
        categoriesCollectionView.delegate       = self
        listsCollectionView.delegate            = self
        productsCollectionView.delegate         = self
        
        // dataSource
        categoriesCollectionView.dataSource     = self
        listsCollectionView.dataSource          = self
        productsCollectionView.dataSource       = self
        
        // Nibs
        categoriesCollectionView.register(UINib(nibName: "CategoriesCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell")
        
        listsCollectionView.register(UINib(nibName: "ListsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell")
        
        productsCollectionView.register(UINib(nibName: "ItemsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell")
        
        // Style
        categoriesCollectionView.backgroundColor    = .none
        listsCollectionView.backgroundColor         = .none
        productsCollectionView.backgroundColor      = .none
        
    }
    
    //MARK:- CollectionView DataSource

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == categoriesCollectionView {
            return categories.count
        }else if collectionView == listsCollectionView {
            return arrLists.count
        }else if collectionView == productsCollectionView{
            return 6
        }else{
            return 0
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == categoriesCollectionView {
            
            let firstCell = categoriesCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CategoriesCollectionViewCell
            let title = categories[indexPath.row].title ?? ""
            let isSelected = categories[indexPath.row].isSelected ?? false
            firstCell.setCell(title: title, isSelected: isSelected )
            return firstCell

        }else if collectionView == listsCollectionView {
            
            let secondCell = listsCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ListsCollectionViewCell
            let lists = arrLists[indexPath.row]
            secondCell.setCell(title: lists)
            return secondCell
            
        }else if collectionView == productsCollectionView {
            let thirdCell = productsCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ItemsCollectionViewCell
            thirdCell.setCell(itemLbl: "Product Name", itemImg: UIImage(systemName: "house.fill") ?? UIImage() , priceLbl: "Price")
            return thirdCell
        }
        return UICollectionViewCell()
    }
    
    //MARK:- CollectionView Delegate
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == self.categoriesCollectionView {
            var i = 0
            while i < self.categories.count {
                self.categories[i].isSelected = false
                i += 1
            }
            self.categories[indexPath.row].isSelected = true
            self.categoriesCollectionView.reloadData()
        }
        
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == productsCollectionView {
            let width = self.productsCollectionView.bounds.width/2 - 10
            return CGSize(width: width, height: 245)

        } else if  collectionView == categoriesCollectionView {
            return CGSize(width:151 , height: 81)
        }else{
            let title = arrLists[indexPath.row]
            let width = title.size(withAttributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 20) ]).width
            return CGSize(width: width+25, height: 24)
        }
    }
    
}
