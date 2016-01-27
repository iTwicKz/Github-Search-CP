//
//  RepoCell.swift
//  GithubDemo
//
//  Created by Takashi Wickes on 1/25/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

class RepoCell: UITableViewCell {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var starLabel: UILabel!
    @IBOutlet weak var forkLabel: UILabel!
    @IBOutlet weak var ownerLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var picImage: UIImageView!
    
    var repo: GithubRepo! {
        didSet {
            nameLabel.text = repo.name
            let imageURL = repo.ownerAvatarURL
            picImage.setImageWithURL(imageURL!)
            starLabel.text = String(repo.stars!)
            forkLabel.text = String(repo.forks!)
            descriptionLabel.text = repo.repoDescription
            
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
