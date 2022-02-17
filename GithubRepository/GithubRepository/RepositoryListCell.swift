//
//  RepositoryListCell.swift
//  GithubRepository
//
//  Created by mac on 2022/02/17.
//

import UIKit
import SnapKit

class RepositoryListCell: UITableViewCell {
    var repository: String?
    
    // MARK: Cell의 UI 구성
    let nameLabel = UILabel()
    let descriptionLabel = UILabel()
    let starImageView = UIImageView()
    let starLabel = UILabel()
    let languageLabel = UILabel()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        [
            nameLabel, descriptionLabel,
            starImageView, starLabel, languageLabel
        ].forEach {
            contentView.addSubview($0)
        }
    }
}


