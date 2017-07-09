//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by mac pro on 7/9/17.
//  Copyright © 2017 Elsiesy Industries. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {
    
    @IBOutlet weak var taskNameTextField: UITextField!
    
    
    @IBOutlet weak var importantSwitch: UISwitch!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addTapped(_ sender: Any) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let task = Task(context: context)
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
       
        navigationController?.popViewController(animated: true)
    }
}
