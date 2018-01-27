//
//  RealHeroModel.swift
//  RxTableViewMVVM
//
//  Created by Ameet on 26/01/18.
//  Copyright © 2018 amit. All rights reserved.
//NSObject is the root class

//Access specifiers? -> WMO

import Foundation

final class RealHeroModel {
    
    let name: String
    let club: String
    let avatar: String
    
    init(name: String, club: String, avatar: String) {
        
        self.name = name
        self.club = club
        self.avatar = avatar
    }
}



