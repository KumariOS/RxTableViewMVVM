//  HeroTableViewCell.swift
//  RxTableViewMVVM
//
//  Created by Ameet on 26/01/18.
//  Copyright © 2018 amit. All rights reserved.

import UIKit

class HeroTableViewCell: UITableViewCell {
    
    static var Identifier = "HeroTableViewCell"
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var clubLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    var realHero: RealHeroModel? {
        
        didSet { //propety observer in Swift which implements observer design pattern.
            guard let superStar = realHero else { return }
            nameLabel.text = superStar.name
            clubLabel.text = superStar.club
            avatarImageView.image = UIImage(named: "\(superStar.avatar)")
        }
    }
}
