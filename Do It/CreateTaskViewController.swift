//
//  CreateTaskViewController.swift
//  Do It
//
//  Created by Huy Hoang on 4/2/17.
//  Copyright © 2017 Huy Hoang. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var taskNameTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    var previousVC = ViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: Any) {
        //Create a Task from the outlet info
        
        let task = Task()
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        
        //Add new task to array in previous viewController
    
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    
    }
    


}
