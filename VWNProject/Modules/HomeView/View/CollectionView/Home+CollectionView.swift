//
//  Home+CollectionView.swift
//  VWNProject
//
//  Created by Mahmoud on 8/2/22.
//

import UIKit

extension HomeViewController: UICollectionViewDelegate,UICollectionViewDataSource {
    
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
            return arrCategories.count
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
            let categories = arrCategories[indexPath.row]
            
            firstCell.setCell(title: categories)
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
        print("Item Selected")
        // Did select
        // While ==> check for condition whether the item is selected or not
        
    }

    
    
}
