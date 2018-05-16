//
//  PlayersViewControllerTableViewController.swift
//  Ratings
//
//  Created by Welday, James [COMRES/REF/SID] on 5/15/18.
//  Copyright © 2018 Welday, James [COMRES/REF/SID]. All rights reserved.
//

import UIKit

class PlayersViewController: UITableViewController {
    
    // MARK: - Properties
    var players = SampleData.generatePlayersData()
}

// MARK: - IBActions
extension PlayersViewController {
    
    @IBAction func cancelToPLayersViewController(_ seque: UIStoryboardSegue){
    }
    @IBAction func savePlayerDetail(_ segue: UIStoryboardSegue) {
        guard let playerDetailsViewController = segue.source as? PlayerDetailsViewController,
            let player = playerDetailsViewController.player else {
                return
        }
        // add new player to the array
        players.append(player)
        
        // update the tableView
        let indexPath = IndexPath(row: players.count - 1, section: 0)
        tableView.insertRows(at: [indexPath], with: .automatic)
    }
}

// MARK: - UITableViewDataSource
extension PlayersViewController  {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return players.count
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlayerCell", for: indexPath) as! PlayerCell   // checks to see if
                                                                                                                // there's an existing
                                                                                                                // cell that can be recycled
        
        let player = players[indexPath.row]
        cell.player = player
        return cell
    }
}
