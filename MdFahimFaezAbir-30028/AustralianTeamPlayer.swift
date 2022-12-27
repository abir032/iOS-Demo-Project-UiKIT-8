//
//  AustralianTeamPlayer.swift
//  MdFahimFaezAbir-30028
//
//  Created by Bjit on 5/12/22.
//

import Foundation
struct AusTeam{
    let playerName: String
    let playerImg: String
    let playerdesc: String
}
extension AusTeam{
    static var ausTeams = [ AusTeam(playerName: "David Warner", playerImg: "Warner", playerdesc: "David Andrew Warner (born 27 October 1986) is an Australian international cricketer and a former captain of the Australian national team in limited overs format and also a former test vice-captain. A left-handed opening batsman, Warner is the first Australian cricketer in 132 years to be selected for a national team in any format without experience in first-class cricket. He is considered as one of the best batters of the current era. He plays for New South Wales and played for the Sydney Thunder in domestic cricket."),
        AusTeam(playerName: "Steve Smith", playerImg: "Smith", playerdesc: "Steven Peter Devereux Smith (born 2 June 1989) is an Australian international cricketer and former captain of the Australian national team. Smith has drawn comparisons to Don Bradman, widely acknowledged as the greatest batsman of all time, due to his distinctively high Test batting average.[3]")
    ]
}
