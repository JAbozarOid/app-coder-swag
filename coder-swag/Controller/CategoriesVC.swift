//
//  ViewController.swift
//  coder-swag
//
//  Created by ARATEL on 9/17/18.
//  Copyright © 2018 ARATEL. All rights reserved.
//

import UIKit

// *** for works with fill data in cell of table we should use some swift protocls in this class like "table data source and table view delegate"
class CategoriesVC: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var categoryTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource = self
        categoryTable.delegate = self
        categoryTable.tableFooterView = UITableView()
        categoryTable.separatorStyle = .none
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // because of retrun this method Int we should get the size of arrayList of Categories
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            let categories = DataService.instance.getCategories()
            let category = categories[indexPath.row]
            cell.updateView(category: category)
            return cell
        }else{
            return CategoryCell()
        }
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    // *** this method is used when the user tapped one of the row
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "ProductVC", sender: category)
    }
    
    // when we tapped in each row we get the title of each category and passed to product page
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productVC = segue.destination as? ProductVC {
            
            // with this codes we remove the default title at the behind of back button to empty title
            let barBtn = UIBarButtonItem()
            barBtn.title = ""
            navigationItem.backBarButtonItem = barBtn
            
            assert(sender as? Category != nil) // this method for build time or runtime
            productVC.initProducts(category: sender as! Category)
            
            
        }
    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}

