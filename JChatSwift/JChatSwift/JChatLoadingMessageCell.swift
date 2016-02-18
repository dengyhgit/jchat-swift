//
//  JChatLoadingMessageCell.swift
//  JChatSwift
//
//  Created by oshumini on 16/2/18.
//  Copyright © 2016年 HXHG. All rights reserved.
//

import UIKit

class JChatLoadingMessageCell: UITableViewCell {
  var loadIndicator:UIActivityIndicatorView!
  
  override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    self.selectionStyle = UITableViewCellSelectionStyle.None
      loadIndicator = UIActivityIndicatorView()
      self.contentView.addSubview(self.loadIndicator)
      self.contentView.snp_makeConstraints(closure: { (make) -> Void in
        make.center.equalTo(self.contentView)
        make.size.equalTo(CGSize(width: 20, height: 20))
      })
      self.startLoading()
    
      self.backgroundColor = UIColor.clearColor()
  }
  
  func startLoading() {
    self.loadIndicator.startAnimating()
  }
  required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
  }

  override func setSelected(selected: Bool, animated: Bool) {
      super.setSelected(selected, animated: animated)

      // Configure the view for the selected state
  }

}