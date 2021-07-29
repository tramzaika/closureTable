//
//  ViewController.swift
//  Table
//
//  Created by Elizaveta Volkova on 29.07.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableV: UITableView!
 
    let adapter = TableAdapter { (table,  rows) -> (Int) in
        return 6
    } completionTwo: { (table, indexPath) -> (UITableViewCell) in
        let cell = table.dequeueReusableCell(withIdentifier: "cell",for: indexPath)
        return   cell
    } completionThree: { (sections) -> (Int) in
        return 1
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableV.delegate = adapter
        tableV.dataSource = adapter
    }
}

