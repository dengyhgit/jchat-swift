//
//  JCTableViewCell.swift
//  JChat
//
//  Created by deng on 2017/4/6.
//  Copyright © 2017年 HXHG. All rights reserved.
//

import UIKit

class JCTableViewCell: UITableViewCell {

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        _init()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        _init()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        _init()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    private lazy var line: UILabel = UILabel()
    
    private func _init() {
        line.layer.backgroundColor = UIColor(netHex: 0xE8E8E8).cgColor
        line.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(line)
        
        addConstraint(_JCLayoutConstraintMake(line, .bottom, .equal, contentView, .bottom))
        addConstraint(_JCLayoutConstraintMake(line, .left, .equal, self, .left, 15))
        addConstraint(_JCLayoutConstraintMake(line, .right, .equal, self, .right, -15))
        addConstraint(_JCLayoutConstraintMake(line, .height, .equal, nil, .notAnAttribute, 0.5))
    }

}
