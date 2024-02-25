//
//  WrestlerInfoLogic.swift
//  WrestlersTable
//
//  Created by Amenda Kang on 2/25/24.
//

import Foundation

struct WrestlerInfoLogic {
    
    let wrestlers = [
        Wrestler("Tetsuya Naito", "Destino", "NJPW"),
        Wrestler("Jay White", "Blade Runner", "AEW"),
        Wrestler("Shinsuke Nakamura", "Kinshasa", "WWE"),
        Wrestler("Kenny Omega", "One Winged Angel", "AEW"),
        Wrestler("Minoru Suzuki", "Gotch Piledriver", "Freelance"),
        Wrestler("Will Ospreay", "Storm Breaker", "AEW"),
        Wrestler("Kota Ibushi", "Kamigoye", "AEW"),
        Wrestler("Zack Sabre Jr.", "Zack Driver", "NJPW"),
        Wrestler("Hiromu Takahashi", "Time Bomb", "NJPW"),
        Wrestler("El Desperado", "Guitarra de Angel", "NJPW"),
    ]
    
    func getWrestlers() -> [Wrestler] {
        return wrestlers
    }
    
    func getCount() -> Int {
        return wrestlers.count
    }
    
    func getName(_ wrestlerIndex : Int) -> String {
        return wrestlers[wrestlerIndex].name
    }
    
    func getFinisher(_ wrestlerIndex : Int) -> String {
        return wrestlers[wrestlerIndex].finisher
    }
    
    func getPromo(_ wrestlerIndex : Int) -> String {
        return wrestlers[wrestlerIndex].promotion
    }
}
