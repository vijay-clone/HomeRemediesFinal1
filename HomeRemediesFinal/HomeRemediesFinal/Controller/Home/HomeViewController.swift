//
//  ViewController.swift
//  HomeRemediesFinal
//
//  Created by Vijay Vikram Singh on 08/10/20.
//  Copyright © 2020 Vijay Vikram Singh. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    

    @IBOutlet weak var homeCollectionView: UICollectionView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        homeCollectionView.backgroundColor = UIColor(named: "customHomeColor")
        homeCollectionView.dataSource = self
        homeCollectionView.delegate = self
        homeCollectionView.register(UINib(nibName: "CustomHomeCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "HomeCustomCell")
    }
    
    
   
}


extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegate{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return HomeCellModel.data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = homeCollectionView.dequeueReusableCell(withReuseIdentifier: "HomeCustomCell", for: indexPath) as! CustomHomeCollectionViewCell
        cell.HomeImageView.image = UIImage(named: HomeCellModel.data[indexPath.row].imageName)
        cell.homeLabel.text = HomeCellModel.data[indexPath.row].imagelabel
        cell.contentView.backgroundColor = .white
        cell.contentView.layer.borderWidth = 0.5
        return cell
    }

}
