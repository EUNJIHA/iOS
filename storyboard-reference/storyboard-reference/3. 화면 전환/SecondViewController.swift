//
//  SecondViewController.swift
//  storyboard-reference
//
//  Created by mac on 2021/12/20.
//

import UIKit

class SecondViewController: UIViewController {
    @IBAction func backButtonTouchUpInside(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
//        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func nextButtonTouchUpInside(_ sender: Any) {
        
        let viewControllerTransitionStoryboard = UIStoryboard(name: "ViewControllerTransition", bundle: .main)
        
        let thirdViewController = viewControllerTransitionStoryboard.instantiateViewController(withIdentifier: "ThirdViewController")
        
        thirdViewController.modalPresentationStyle = .fullScreen
        thirdViewController.modalTransitionStyle = .flipHorizontal // .partialCurl은 .fullScreen에서만 가능
        
        self.present(thirdViewController, animated: true)
    }
    
}
