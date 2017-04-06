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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: Any) {
        //Create a Task from the outlet info
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let task = Task(context: context)
        
        //NSManagedObjectContent means you're looking to the databas
        
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        //Pop back
        
        navigationController!.popViewController(animated: true)
    
    }
    


}
