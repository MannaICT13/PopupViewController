//
//  PopupViewController.swift
//  PopupViewController
//
//  Created by Md Khaled Hasan Manna on 17/2/23.
//

import Foundation
import UIKit

class PopupViewController: UIViewController {
    
    @IBOutlet private weak var textView: UITextView!
    @IBOutlet private weak var closeButtonOutlet: UIButton!
    private lazy var blurredView: UIView = {
           let containerView = UIView()
           let blurEffect = UIBlurEffect(style: .light)
           let customBlurEffectView = CustomVisualEffectView(effect: blurEffect, intensity: 0.1)
           customBlurEffectView.frame = self.view.bounds
           let dimmedView = UIView()
           dimmedView.backgroundColor = .black.withAlphaComponent(0.1)
           dimmedView.frame = self.view.bounds
           
           containerView.addSubview(customBlurEffectView)
           containerView.addSubview(dimmedView)
           return containerView
       }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(blurredView)
        view.sendSubviewToBack(blurredView)
    }
    
    @IBAction private func closeButtonAction(_ sender: UIButton) {
        
    }
}
