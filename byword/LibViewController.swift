//
//  LibViewController.swift
//  byword
//
//  Created by Ed Chao on 1/18/16.
//  Copyright © 2016 Ed Chao. All rights reserved.
//

import UIKit

class LibViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UIViewControllerTransitioningDelegate, UINavigationControllerDelegate {

    var table_subjects : UITableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()

        // SETUP VIEW
        view.backgroundColor = UIColor.canvasColor()
        self.title = "Library"
        
        // SETUP TABLE
        
        table_subjects.frame = CGRectMake(0, 0, screenSize.width, screenSize.height - 50);
        table_subjects.rowHeight = 100
        table_subjects.delegate = self
        table_subjects.dataSource = self
        table_subjects.registerClass(LibTableViewCell.self, forCellReuseIdentifier: "cell")
        table_subjects.separatorInset = UIEdgeInsetsMake(15, 15, 15, 15)
        table_subjects.separatorColor = UIColor.strokeColor(0)
        table_subjects.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        table_subjects.tableHeaderView = nil
        table_subjects.backgroundColor = UIColor.clearColor()
        view.addSubview(table_subjects)
        table_subjects.tableFooterView = UIView(frame: CGRect.zero)
        self.table_subjects.rowHeight = UITableViewAutomaticDimension
        
        // SETUP NAV BAR
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: "onAdd:")    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // TABLE METHODS
    
    func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return UITableViewAutomaticDimension;
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! LibTableViewCell
        cell.label_text.text = "12 Tiny Bios"
        cell.label_title.text = "Ed Chao"
        cell.backgroundColor = UIColor.clearColor()
        cell.sizeToFit()
        cell.setNeedsUpdateConstraints()
        cell.updateConstraintsIfNeeded()
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        let bioVC: BioViewController = BioViewController(nibName: nil, bundle: nil)
        let thisCell: LibTableViewCell = tableView.cellForRowAtIndexPath(indexPath) as! LibTableViewCell!
        
        // Pass the value of the cell to the title of the pushed VC
        if let label = thisCell.label_title?.text {
            bioVC.title = label
        }else{
            bioVC.title = "mystery!"
        }
        self.navigationController?.pushViewController(bioVC, animated: true)
        
        
    }


}
