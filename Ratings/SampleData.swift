//
//  SampleData.swift
//  Ratings
//
//  Created by Welday, James [COMRES/REF/SID] on 5/15/18.
//  Copyright © 2018 Welday, James [COMRES/REF/SID]. All rights reserved.
//

import Foundation

final class SampleData{
    
    static func generatePlayersData() -> [Player]{
        return[
            Player(name: "Bill Evans", game: "Tic-Tac-Toe", rating: 4),
            Player(name: "Oscar Peterson", game: "Spin the Bottle", rating: 5),
            Player(name: "Dave Burbeck", game: "Texas Hold 'em", rating: 2)
        ]
    }
}
