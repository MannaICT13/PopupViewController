//
//  ViewController.swift
//  PopupViewController
//
//  Created by Md Khaled Hasan Manna on 17/2/23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction private func clickHere(_ sender: UIButton) {
        showPopupView()
    }
    
    private func showPopupView() {
        let popupView = self.storyboard?.instantiateViewController(withIdentifier: "PopupViewController") as! PopupViewController
        
        popupView.callback.didTapClose = {[weak self] in
            self?.dismiss(animated: true)
        }
        popupView.modalPresentationStyle = .currentContext
        popupView.modalTransitionStyle = .crossDissolve
        
        self.present(popupView, animated: true)
    }
}

