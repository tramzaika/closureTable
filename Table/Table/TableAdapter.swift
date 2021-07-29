//
//  tableAdapter.swift
//  Table
//
//  Created by Elizaveta Volkova on 29.07.2021.
//

import UIKit
import Foundation


class TableAdapter: NSObject, UITableViewDataSource, UITableViewDelegate {
    
    var completionOne: ((UITableView,Int) -> (Int))
    var completionTwo: ((UITableView,IndexPath) -> (UITableViewCell))
    var completionThree: ((UITableView) -> (Int))
    
    
    init(completionOne: @escaping (UITableView,Int) -> (Int),
        completionTwo: @escaping (UITableView,IndexPath) -> (UITableViewCell),
        completionThree: @escaping (UITableView) -> (Int)) {
               
        self.completionOne = completionOne
        self.completionTwo = completionTwo
        self.completionThree = completionThree
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
                
        return completionOne(tableView, section)
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        return completionTwo(tableView,indexPath)
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        
        return completionThree(tableView)
    }
}


