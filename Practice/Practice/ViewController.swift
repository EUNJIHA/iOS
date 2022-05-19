//
//  ViewController.swift
//  Practice
//
//  Created by mac on 2022/05/19.
//
// https://developer.apple.com/documentation/uikit/view_controllers/using_suggested_searches_with_a_search_controller

import UIKit

class ViewController: UIViewController {

    fileprivate func createSearchController() {
        
        let searchController = UISearchController(searchResultsController: nil)
//        searchController.searchResultsUpdater = self
        searchController.searchBar.autocapitalizationType = .none
        searchController.searchBar.searchTextField.placeholder = NSLocalizedString("Enter a search term", comment: "")
        searchController.searchBar.returnKeyType = .done
        
        // Place the search bar in the navigation bar.
        navigationItem.searchController = searchController
        
        // Make the search bar always visible.
        navigationItem.hidesSearchBarWhenScrolling = false
        
        // Monitor when the search controller is presented and dismissed.
        searchController.delegate = self
        
        // Monitor when the search button is tapped, and start/end editing.
        searchController.searchBar.delegate = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        createSearchController()
    }


}

extension ViewController: UISearchControllerDelegate, UISearchBarDelegate {
    
}
