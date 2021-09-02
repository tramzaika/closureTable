//
//  tableAdapter.swift
//  Table
//
//  Created by Elizaveta Volkova on 29.07.2021.
//

import UIKit
import Foundation


class TableAdapter: NSObject, UITableViewDataSource, UITableViewDelegate {
    
    var numberOfRowsInSectionCompletion: ((UITableView,Int) -> (Int))
    var cellForRowAtCompletion: ((UITableView,IndexPath) -> (UITableViewCell))
    var numberOfSectionsCompletion: ((UITableView) -> (Int))
    
    
    init(numberOfRowsInSectionCompletion: @escaping (UITableView,Int) -> (Int),
         cellForRowAtCompletion: @escaping (UITableView,IndexPath) -> (UITableViewCell),
         numberOfSectionsCompletion: @escaping (UITableView) -> (Int)) {
               
        self.numberOfRowsInSectionCompletion = numberOfRowsInSectionCompletion
        self.cellForRowAtCompletion = cellForRowAtCompletion
        self.numberOfSectionsCompletion = numberOfSectionsCompletion
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
                
        return numberOfRowsInSectionCompletion(tableView, section)
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        return cellForRowAtCompletion(tableView,indexPath)
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        
        return numberOfSectionsCompletion(tableView)
    }
}


