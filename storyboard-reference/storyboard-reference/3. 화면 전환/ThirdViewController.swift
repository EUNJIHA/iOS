//
//  ThirdViewController.swift
//  storyboard-reference
//
//  Created by mac on 2021/12/20.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBAction func backButtonTouchUpInside(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
//        self.dismiss(animated: true, completion: nil)
    }
    
}
