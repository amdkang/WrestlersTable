//
//  Wrestler.swift
//  WrestlersTable
//
//  Created by Amenda Kang on 2/25/24.
//

import Foundation

struct Wrestler {
    
    init(_ nam: String, _ fin: String, _ promo: String) {
        name = nam
        finisher = fin
        promotion = promo
    }
    
    var name: String
    var finisher: String
    var promotion: String
}
