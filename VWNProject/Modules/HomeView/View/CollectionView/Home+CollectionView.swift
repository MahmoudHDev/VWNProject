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
        
        categoriesCollectionView.delegate       = self
        listsCollectionView.delegate            = self
        productsCollectionView.delegate         = self
        
        categoriesCollectionView.dataSource     = self
        listsCollectionView.dataSource          = self
        productsCollectionView.dataSource       = self
        
        categoriesCollectionView.register(UINib(nibName: "CategoriesCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell")
        listsCollectionView.register(UINib(nibName: "ListsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell")
        productsCollectionView.register(UINib(nibName: "ItemsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell")
    }
    
    //MARK:- CollectionView DataSource

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        return UICollectionViewCell()
    }
    
    //MARK:- CollectionView Delegate
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Item Selected")
        // Did select
        // While ==> check for condition whether the item is selected or not
        
    }
    
    
}
