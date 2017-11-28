//
//  FbTodoListController.swift
//  testfirebase
//
//  Created by Nicola Solazzo on 28/11/17.
//  Copyright © 2017 Nicola Solazzo. All rights reserved.
//

import UIKit

class FbTodoListController: UITableViewController {
    var todoListItems:[TodoItem] = []
    override func viewDidLoad() {
        super.viewDidLoad()

       let Todo1 = TodoItem(name: "sapone", completed: false, quantity: "4")
        let Todo2 = TodoItem(name: "libro", completed: true, quantity: "4")
        let Todo3 = TodoItem(name: "spazzolino", completed: true, quantity: "4")
        let Todo4 = TodoItem(name: "dentifricio", completed: false, quantity: "4")
        todoListItems.append(Todo1)
        todoListItems.append(Todo2)
        todoListItems.append(Todo3)
        todoListItems.append(Todo4)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return todoListItems.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoListCell", for: indexPath)
        
        let todo = todoListItems[indexPath.row]
        cell.textLabel?.text = todo.name
        cell.detailTextLabel?.text = todo.quantity
        cell.accessoryType = todo.completed ? .checkmark : .none
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
