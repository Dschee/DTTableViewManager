//
//  TableViewController.swift
//  DTTableViewManager
//
//  Created by Denys Telezhkin on 22.08.15.
//  Copyright © 2015 Denys Telezhkin. All rights reserved.
//

import UIKit
import DTTableViewManager
import DTModelStorage

class TableViewController: UITableViewController, DTTableViewManageable {

    override func viewDidLoad() {
        super.viewDidLoad()

        manager.startManagingWithDelegate(self)
        manager.registerCellClass(StringCell)
        manager.memoryStorage.addItems(["1","2","3"])
        manager.cellSelection(TableViewController.selectedText)
        
    }
    
    func selectedText(cell: StringCell, text: String, indexPath: NSIndexPath) {
        
        let alertCtrl = UIAlertController(title: "Chosen text:", message: text, preferredStyle: .Alert)
        let okayAction = UIAlertAction(title: "OK", style: .Cancel, handler: nil)
        alertCtrl.addAction(okayAction)
        
        self.presentViewController(alertCtrl, animated: true, completion: nil)
    }
}
