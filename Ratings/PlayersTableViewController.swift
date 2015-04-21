//
//  PlayersTableViewController.swift
//  Ratings
//
//  Created by Jörg Schlömer on 21.04.15.
//  Copyright (c) 2015 Jörg Schlömer. All rights reserved.
//

import UIKit

class PlayersTableViewController: UITableViewController {
    
    var players: [Player] = playersData
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

  
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath)
        -> UITableViewCell {
            let cell = tableView.dequeueReusableCellWithIdentifier("PlayerCell", forIndexPath: indexPath)
            as PlayerCell
            
            let player = players[indexPath.row] as Player
            cell.nameLabel.text = player.name
            cell.gameLabel.text = player.game
            cell.ratingImageView.image = imageForRating(player.rating)
            return cell
    }
    
    func imageForRating(rating:Int) -> UIImage? {
        switch rating {
        case 1:
            return UIImage(named: "1StarSmall")
        case 2:
            return UIImage(named: "2StarsSmall")
        case 3:
            return UIImage(named: "3StarsSmall")
        case 4:
            return UIImage(named: "4StarsSmall")
        case 5:
            return UIImage(named: "5StarsSmall")
        default:
            return nil
        }
    }
}
