//
//  SecondContactListViewController.swift
//  HW_ContactList
//
//  Created by Anton Kondratenko on 04.07.2023.
//

import UIKit

class SecondContactListViewController: UITableViewController {
    var persons: [Person] = []
    
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
}
