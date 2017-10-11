//
//  CameraButton.swift
//  QuoteProStarter
//
//  Created by steve on 2017-10-11.
//  Copyright © 2017 steve. All rights reserved.
//

import UIKit

@IBDesignable
class CameraButton: UIButton {
  
 @IBInspectable var cornerRadius: CGFloat = 0 {
    didSet {
      self.layer.cornerRadius = cornerRadius
    }
  }
  
  @IBInspectable var borderWidth: CGFloat = 0 {
    didSet {
      self.layer.borderWidth = borderWidth
    }
  }
  
  @IBInspectable var borderColor: UIColor = .clear {
    didSet {
      self.layer.borderColor = borderColor.cgColor
    }
  }
  
  

}
