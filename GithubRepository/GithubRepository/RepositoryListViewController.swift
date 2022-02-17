//
//  RepositoryListViewController.swift
//  GithubRepository
//
//  Created by mac on 2022/02/17.
//

import UIKit

class RepositoryListViewController: UITableViewController {
    private let origanization = "Apple"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: Title
        title = origanization + "Repositories"
        
        // MARK: API Call
        refreshControl = UIRefreshControl()
        let refreshControl = refreshControl!
        refreshControl.backgroundColor = .white
        refreshControl.tintColor = .darkGray
        refreshControl.attributedTitle = NSAttributedString(string: "당겨서 새로고침")
        refreshControl.addTarget(self, action: #selector(refresh), for: .valueChanged)
        
        // MARK: register Cell
        tableView.register(RepositoryListCell.self, forCellReuseIdentifier: "RepositoryListCell")
        tableView.rowHeight = 140
    }
    
    // MARK: API Call
    @objc func refresh() {
        
    }
}

// MARK: UITableView DataSource Delegate
extension RepositoryListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "RepositoryListCell", for: indexPath) as? RepositoryListCell else {return UITableViewCell()}
        
        return cell
    }
}
