//
//  SecondContactListViewController.swift
//  HW_ContactList
//
//  Created by Anton Kondratenko on 04.07.2023.
//

import UIKit

class SecondContactListViewController: UITableViewController {
    var persons: [Person] = []


    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerLabel = UILabel(frame: CGRect(x: 16, y: 3, width: tableView.frame.width, height: 20))
        
        headerLabel.text = persons[section].fullName
        headerLabel.font = UIFont.boldSystemFont(ofSize: 17)
        
        let contentView = UIView()
        contentView.addSubview(headerLabel)
        return contentView
    }
 
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.backgroundColor = .lightGray
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let contact = persons[indexPath.section]

        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "contactPhone", for: indexPath)
            var content = cell.defaultContentConfiguration()
            content.image = UIImage(systemName: "phone")
            content.text = contact.phone
            cell.contentConfiguration = content
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "contactMail", for: indexPath)
            var content = cell.defaultContentConfiguration()
            content.image = UIImage(systemName: "envelope")
            content.text = contact.email
            cell.contentConfiguration = content
            return cell
        }
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
