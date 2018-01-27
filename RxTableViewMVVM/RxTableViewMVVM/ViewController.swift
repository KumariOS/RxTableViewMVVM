//
//  ViewController.swift
//  RxTableViewMVVM
//
//  Created by Ameet on 26/01/18.
//  Copyright © 2018 amit. All rights reserved.


import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {

    @IBOutlet weak var addButton: UIBarButtonItem!
    @IBOutlet weak var tableView: UITableView!
    let viewModel = HeroViewModel() //callig default initialiser
    let dispose = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.rowHeight = 111
        self.setupTableView()
        //self.addOneModel()
        self.setupBarButton()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    func setupTableView() {
        
        viewModel.realHeroes.asObservable().bind(to: tableView.rx.items(cellIdentifier: HeroTableViewCell.Identifier, cellType: HeroTableViewCell.self)) { (row, data, cell) in
            
            cell.realHero = data
        }.disposed(by: dispose)
    }
    
    func setupBarButton() {
        
        addButton.rx.tap.subscribe(){event in
            
            self.viewModel.realHeroes.value.append(RealHeroModel(name: "Cristiano Ronaldo", club: "Real Madrid", avatar: "ronaldo"))
            }.disposed(by: dispose)
    }
    
    
    func addOneModel() {
        
        viewModel.realHeroes.value.append(RealHeroModel(name: "Cristiano Ronaldo", club: "Real Madrid", avatar: "ronaldo"))

    }
}

