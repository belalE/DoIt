//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by mac pro on 7/9/17.
//  Copyright © 2017 Elsiesy Industries. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {

    var task : Task? = nil
    
    var previousVC = TasksViewController()

    
    @IBOutlet weak var taskLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if task!.important {
            taskLabel.text = "❗️\(String(describing: task!.name!))"
        } else {
            taskLabel.text = task!.name!
        }

    }

    @IBAction func CompleteTapped(_ sender: Any) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        context.delete(task!)
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        navigationController?.popViewController(animated: true)

        
    }
  
}
