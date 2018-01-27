//  Utilities.swift
//  RxTableViewMVVM
//  Created by Ameet on 26/01/18.
//  Copyright © 2018 amit. All rights reserved.

import Foundation

final class Utilities {
    
    static func createData() -> [RealHeroModel] {
        
        let ronaldo = RealHeroModel(name: "Cristiano Ronaldo", club: "Real Madrid", avatar: "ronaldo")
        
        let messi = RealHeroModel(name: "Leonel Messi", club: "Barcelona", avatar: "messi")
        
        let torres = RealHeroModel(name: "Fernando Torres", club: "Atletico Madrid", avatar: "torres")
        
        return [ronaldo, messi, torres]
    }
}

