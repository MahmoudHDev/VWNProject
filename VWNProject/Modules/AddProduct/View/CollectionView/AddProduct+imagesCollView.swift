//
//  AddProduct+imagesCollView.swift
//  VWNProject
//
//  Created by Mahmoud on 8/3/22.
//

import UIKit

extension AddProductViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    
    //MARK:- CollectionView Configuration

    func collectionViewConfig() {
        
        // Delegate and DataSource
        imagesCollectionView.delegate   = self
        imagesCollectionView.dataSource = self
        
        // Register NIBS
        imagesCollectionView.register(UINib(nibName: "ImagesCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "addCell")
        imagesCollectionView.register(UINib(nibName: "AddImgCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "imagesCell")
        
        // Style
        imagesCollectionView.backgroundColor = .none
    }
    
    //MARK:- CollectionView DataSource

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if arrImages.count == 0 {
            return 1
        }else {
            return arrImages.count + 1
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.row == self.arrImages.count - 1 {
            let addCell = collectionView.dequeueReusableCell(withReuseIdentifier: "addCell", for: indexPath) as! ImagesCollectionViewCell
            return addCell
        }
        let cell: ImagesCollectionViewCell  = collectionView.dequeueReusableCell(withReuseIdentifier: "imagesCell", for: indexPath) as! ImagesCollectionViewCell
        cell.deleteImg = { [weak self] in
            guard let self = self else {return}
            self.arrImages.remove(at: indexPath.row)
        }
        return cell
    }
    
    
    //MARK:- CollectionView Delegate

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row == self.arrImages.count - 1 {
            picker.sourceType = .photoLibrary
            present(picker, animated: true, completion: nil)
        }
    }
    
    
}
//MARK:- UIImage Picker

extension AddProductViewController: UIImagePickerControllerDelegate ,UINavigationControllerDelegate {
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let selectedImage = info[.editedImage] as? UIImage else {return}
        self.arrImages.append(selectedImage)
        self.imagesCollectionView.reloadData()
    }
}
