//
//  BioViewController.swift
//  byword
//
//  Created by Ed Chao on 1/18/16.
//  Copyright © 2016 Ed Chao. All rights reserved.
//

import UIKit

class BioViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UIViewControllerTransitioningDelegate, UINavigationControllerDelegate {

    var PrevString : String = ""
    var table_bios : UITableView = UITableView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // SETUP VIEW
        view.backgroundColor = UIColor.canvasColor()
        
        // SETUP TABLE
        
        table_bios.frame = CGRectMake(0, 0, screenSize.width, screenSize.height - 50);
        table_bios.rowHeight = 100
        table_bios.delegate = self
        table_bios.dataSource = self
        table_bios.registerClass(BioTableViewCell.self, forCellReuseIdentifier: "cell")
        table_bios.separatorInset = UIEdgeInsetsMake(15, 15, 15, 15)
        table_bios.separatorColor = UIColor.strokeColor()
        table_bios.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        table_bios.tableHeaderView = nil
        table_bios.backgroundColor = UIColor.clearColor()
        view.addSubview(table_bios)
        table_bios.tableFooterView = UIView(frame: CGRect.zero)
        self.table_bios.rowHeight = UITableViewAutomaticDimension
        

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    override func viewWillAppear(animated: Bool) {
        print(PrevString)
        if (PrevString == "Profile"){
            print("waoahaoia")
        }
    }
    
    
    // TABLE METHODS
    
    func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return UITableViewAutomaticDimension;
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 10.0
        let attrString = NSMutableAttributedString(string: "Tim is one of those guys who can do everything well. It’s not fair really. The rest of us just have to watch.")
        attrString.addAttribute(NSParagraphStyleAttributeName, value:paragraphStyle, range:NSMakeRange(0, attrString.length))
        
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! BioTableViewCell
        cell.label_text.text = "Ed Chao on Tim Yip"
        cell.label_title.attributedText = attrString
        cell.backgroundColor = UIColor.clearColor()
        cell.sizeToFit()
        cell.setNeedsUpdateConstraints()
        cell.updateConstraintsIfNeeded()
        
        return cell
    }

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        
        tableView.deselectRowAtIndexPath(indexPath, animated: true)

        
    }


}
