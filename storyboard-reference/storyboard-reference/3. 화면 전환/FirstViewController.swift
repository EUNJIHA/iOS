//
//  FirstViewController.swift
//  storyboard-reference
//
//  Created by mac on 2021/12/20.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBAction func moveNextButtonTouchUpInside(_ sender: Any) {
        // TODO: SecondViewController로 이동
        
        let viewControllerTransitionStoryboard = UIStoryboard(name: "ViewControllerTransition", bundle: .main)
        
        let secondViewController = viewControllerTransitionStoryboard.instantiateViewController(withIdentifier: "SecondViewController")
        
        secondViewController.modalPresentationStyle = .fullScreen
        secondViewController.modalTransitionStyle = .flipHorizontal // .partialCurl은 .fullScreen에서만 가능
        
        self.present(secondViewController, animated: true)
    }
    
}
