//
//  TaskVC.swift
//  ToDoList
//
//  Created by Darya Drobyshevsky on 4/29/21.
//

import UIKit

class TaskVC: UIViewController {
    
    
    @IBOutlet weak var userTaskField: UITextField!
    
   var saveTaskDeleagate: SaveUserTaskDelegate?
    
    func saveTask(task: TaskModel){
  }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveTaskBtnPressed(_ sender: Any) {
        
        if let task = userTaskField.text {
                 if !task.isEmpty {
                   let task = TaskModel(taskName: task, taskCellColor: .white)
                   saveTaskDeleagate?.saveTask(task: task)
                   dismiss(animated: true, completion: nil)
                 }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
}
