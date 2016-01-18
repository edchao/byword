//
//  LibTableViewCell.swift
//  byword
//
//  Created by Ed Chao on 1/18/16.
//  Copyright © 2016 Ed Chao. All rights reserved.
//

import UIKit

class LibTableViewCell: UITableViewCell {
    
    var label_title: UILabel! = UILabel()
    var label_text : UILabel! = UILabel()
    var cell_dash : UIView! = UIView()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
                
        // LABEL TITLE
        label_title = UILabel(frame: CGRectMake(30, 30, self.bounds.size.width, 25))
        label_title.textColor = UIColor.primaryColor()
        label_title.font = UIFont.systemFontOfSize(21, weight: UIFontWeightBold)
        label_title.numberOfLines = 0
        self.contentView.addSubview(label_title)
        
        
        // LABEL TEXT
        label_text = UILabel(frame: CGRectMake(30, 60, self.bounds.size.width, 25))
        label_text.textColor = UIColor.neutralColor(1)
        label_text.numberOfLines = 0
        label_text.font = UIFont(name: label_text.font.fontName, size: 12)
        self.contentView.addSubview(label_text)
        
        
        
        // MINI DASH DIVIDER
        cell_dash = UIView(frame: CGRect(x: 30, y: self.contentView.frame.size.height - 1.0, width: 20, height: 1))
        cell_dash.backgroundColor = UIColor.strokeColor()
        self.contentView.addSubview(cell_dash)
        
        
        
        self.layout()
        
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
    }
    
    func layout(){
        
        self.label_title.translatesAutoresizingMaskIntoConstraints = false
        self.label_text.translatesAutoresizingMaskIntoConstraints = false
        self.cell_dash.translatesAutoresizingMaskIntoConstraints = false
        
        
        let viewsDictionary = [
            "label_title" :label_title,
            "label_text" :label_text,
            "cell_dash" : cell_dash,
        ]
        
        // POSITIONS
        
        
        
        let view_constraint_H:NSArray = NSLayoutConstraint.constraintsWithVisualFormat("H:|-20-[label_title]-20-|", options: NSLayoutFormatOptions.AlignAllLeading, metrics: nil, views: viewsDictionary)
 
        let view_constraint_HB:NSArray = NSLayoutConstraint.constraintsWithVisualFormat("H:|-20-[cell_dash(30)]-(>=0)-|", options: NSLayoutFormatOptions.AlignAllLeading, metrics: nil, views: viewsDictionary)
        
        
        let view_constraint_V:NSArray = NSLayoutConstraint.constraintsWithVisualFormat("V:|-30-[label_title]-[label_text]-30-[cell_dash(1)]|", options: NSLayoutFormatOptions.AlignAllLeading, metrics: nil, views: viewsDictionary)
        
        self.contentView.addConstraints(view_constraint_H as! [NSLayoutConstraint])
        self.contentView.addConstraints(view_constraint_V as! [NSLayoutConstraint])
        self.contentView.addConstraints(view_constraint_HB as! [NSLayoutConstraint])
   
        
    }
    
    
}