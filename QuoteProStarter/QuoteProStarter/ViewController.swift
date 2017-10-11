//
//  ViewController.swift
//  QuoteProStarter
//
//  Created by steve on 2017-10-10.
//  Copyright © 2017 steve. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  var quoteView: QuoteView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    quoteView = Bundle.main.loadNibNamed("QuoteView", owner: nil)?.first as? QuoteView
    view = quoteView
    quoteView.cameraButton.addTarget(self, action: #selector(buttonTapped(sender:)) , for: .touchUpInside)
  }
  
  @objc func buttonTapped(sender: UIButton) {
    
    
    guard let image = UIImage.snapshot(view: quoteView) else {
      fatalError()
    }
    let activity = UIActivityViewController(activityItems: [image], applicationActivities: nil)
    present(activity, animated: true)
  }
}

extension UIImage {
  static func snapshot(view: UIView) -> UIImage? {
    UIGraphicsBeginImageContextWithOptions(view.bounds.size, true, 0)
    view.drawHierarchy(in: view.bounds, afterScreenUpdates: true)
    let image = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    return image
  }
}

