//
//  PlayerCell.swift
//  Ratings
//
//  Created by Jörg Schlömer on 21.04.15.
//  Copyright (c) 2015 Jörg Schlömer. All rights reserved.
//

import UIKit

class PlayerCell: UITableViewCell {

    @IBOutlet weak var gameLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ratingImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
  }

}
