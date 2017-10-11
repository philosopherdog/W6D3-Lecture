//
//  ViewController.swift
//  PropertyAnimatorCodeAlong
//
//  Created by steve on 2017-10-11.
//  Copyright © 2017 steve. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let name = "man"
        let image = UIImage(named: name)
        imageView = UIImageView(image: image)
        imageView.center = view.center
        view.addSubview(imageView)
    }
    
    
    
    @IBAction func animateTapped(_ sender: UIButton) {
        let tag = sender.tag
        
        let animator = UIViewPropertyAnimator(duration: 1.0, dampingRatio: 0.2) { [weak self] in
            guard let welf = self else { return }
            sender.isEnabled = false
            switch tag {
            case 0:
                welf.imageView.transform = CGAffineTransform(rotationAngle: .pi)
            case 1:
                welf.imageView.transform = .identity
            case 2:
                welf.imageView.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
            case 3:
                welf.imageView.transform = .identity
            case 4:
                welf.imageView.transform = CGAffineTransform(translationX: -200, y: -200)
            case 5:
                welf.imageView.transform = .identity
            default:
                print(#line, tag)
            }
        }
        animator.addCompletion { (_) in
            sender.isEnabled = true
        }
        animator.startAnimation()
        sender.tag = tag >= 5 ? 0 : tag + 1
        
    }
    
}

