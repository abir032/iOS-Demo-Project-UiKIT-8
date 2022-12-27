//
//  NewzelandTeamPlayer.swift
//  MdFahimFaezAbir-30028
//
//  Created by Bjit on 5/12/22.
//

import Foundation
struct NzTeam{
    let playerName: String
    let playerImg: String
    let playerdesc: String
}

extension NzTeam{
    static var nzTeams = [ NzTeam(playerName: "Kane Williamson", playerImg: "kaneWilliamson", playerdesc: "Kane Stuart Williamson (born 8 August 1990) is a New Zealand cricketer who is currently the captain of the New Zealand national team in all formats. He is considered one of New Zealand's greatest batsmen ever. He is a right-handed batsman and an occasional off spin bowler."),
        NzTeam(playerName: "Trent Boult", playerImg: "Boult", playerdesc: "Trent Alexander Boult (born 22 July 1989) is a New Zealand international cricketer who plays as a bowler for Northern Districts in New Zealand's domestic cricket, and New Zealand internationally.[1]"),
        ]
}
