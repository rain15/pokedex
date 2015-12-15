//
//  ViewController.swift
//  pokedex
//
//  Created by Hema Pillay on 12/11/15.
//  Copyright © 2015 Pakshi LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collection.delegate = self
        collection.dataSource = self
        //collection.scrollEnabled = true
       
        //collection.alwaysBounceVertical = true

        //var pokemon = Pokemon(name: "Charlzard", pokedexId: 6)
    }

    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return 718
    }
 
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCellWithReuseIdentifier("PokeCell", forIndexPath: indexPath) as? PokeCell {
            
            let pokemon = Pokemon(name: "Test", pokedexId: indexPath.row)
            cell.configureCell(pokemon)
            
            return cell
        } else {
            return UICollectionViewCell()
        }
        
        
    }

    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        return CGSize(width: 105, height: 105)
    }

}

