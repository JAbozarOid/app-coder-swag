//
//  CategoryCellTableViewCell.swift
//  coder-swag
//
//  Created by ARATEL on 9/17/18.
//  Copyright © 2018 ARATEL. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    // each cell of my table has image background  and title
    @IBOutlet weak var categoryImage : UIImageView!
    @IBOutlet weak var categoryTitle : UILabel!

    // for update each cell of table view
    func updateView(category: Category) {
        
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }
    
}
