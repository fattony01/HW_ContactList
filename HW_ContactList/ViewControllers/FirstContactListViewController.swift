//
//  FirstContactListViewController.swift
//  HW_ContactList
//
//  Created by Anton Kondratenko on 04.07.2023.
//

import UIKit

class FirstContactListViewController: UITableViewController {
    var persons: [Person] = []
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        let contact = persons[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = contact.fullName
        
        cell.contentConfiguration = content
        return cell
    }
    
    //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let contactInfoVC = segue.destination as? ContactInfoViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        contactInfoVC.person = persons[indexPath.row]
    }
}
