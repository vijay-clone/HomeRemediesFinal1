//
//  BeautyViewController.swift
//  HomeRemediesFinal
//
//  Created by Vijay Vikram Singh on 08/10/20.
//  Copyright © 2020 Vijay Vikram Singh. All rights reserved.
//

import UIKit

class BeautyViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    

    @IBOutlet weak var beautyCollectionView: UICollectionView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        beautyCollectionView.backgroundColor = .systemRed
        beautyCollectionView.register(UINib(nibName: "BeautyCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "BeautyCustomCell")
        beautyCollectionView.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return BeautyModel.beautyData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = beautyCollectionView.dequeueReusableCell(withReuseIdentifier: "BeautyCustomCell", for: indexPath) as! BeautyCollectionViewCell
        cell.beautyImageView.image = UIImage(named: BeautyModel.beautyData[indexPath.row].beautyImage)
        cell.beautyLabel.text = BeautyModel.beautyData[indexPath.row].beautyLabel
        
        return cell
    }
    
    
   

}
