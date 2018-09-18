//
//  ProductVC.swift
//  coder-swag
//
//  Created by ARATEL on 9/18/18.
//  Copyright © 2018 ARATEL. All rights reserved.
//

import UIKit

// *** when we want to use Collection View we should use their protocls
class ProductVC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
     @IBOutlet weak var productsCollection: UICollectionView!
    
    // *** Define an empty array of products to get prodcts
    private(set) public var products = [Product]()

    override func viewDidLoad() {
        super.viewDidLoad()

        productsCollection.dataSource = self
        productsCollection.delegate = self
    }
    
    func initProducts(category: Category) {
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
        navigationItem.title = category.title
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // *** this line means "as? ProductCell" that we want cast cell to ProductCell to Access the update view inside the class ProductCell
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        }
        
        return ProductCell()
    }

    
}
