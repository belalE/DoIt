//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by mac pro on 7/9/17.
//  Copyright © 2017 Elsiesy Industries. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {

    var task = Task()
    
    var previousVC = TasksViewController()

    
    @IBOutlet weak var taskLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if task.important {
            taskLabel.text = "❗️\(task.name)"
        } else {
            taskLabel.text = task.name
        }

    }

    @IBAction func CompleteTapped(_ sender: Any) {
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        previousVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)

        
    }
  
}
