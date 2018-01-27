//  HeroViewModel.swift
//  RxTableViewMVVM
//
//  Created by Ameet on 26/01/18.
//  Copyright © 2018 amit. All rights reserved.

import UIKit
import RxSwift

final class HeroViewModel: NSObject {
    
    var realHeroes: Variable<[RealHeroModel]> = Variable([]) //default
    
    override init() {
        realHeroes.value = Utilities.createData()
    }
}
