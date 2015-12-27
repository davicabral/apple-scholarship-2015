//
//  InterestViewController.swift
//  WWDC
//
//  Created by Davi Cabral de Oliveira on 21/04/15.
//  Copyright (c) 2015 Davi Cabral de Oliveira. All rights reserved.
//

import UIKit

class InterestViewController: ViewController {

    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let interests: [String : String] = ["Apple Watch" : "watch", "Internet of Things" : "IOT", "Health Kit" : "hkit", "Connectivity" : "conect"]
    var keys: [String]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionView.dataSource = self
        keys = Array(interests.keys)
    }
    
    @IBAction func tapMenu(sender: AnyObject) {
        self.sideMenuViewController.presentLeftMenuViewController()
    }
    
}


extension InterestViewController : UICollectionViewDataSource {
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return 4
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell{
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("InterestCell", forIndexPath: indexPath) as! InterestCell
        
        let imageName = interests[keys[indexPath.row]]
        
        cell.iconImageview.image = UIImage(named: imageName!)
        cell.titleLabel.text = keys[indexPath.row]
        
        
        return cell as UICollectionViewCell
    }



}