//
//  ContactInfoViewController.swift
//  HW_ContactList
//
//  Created by Anton Kondratenko on 04.07.2023.
//

import UIKit

class ContactInfoViewController: UIViewController {
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var mailLabel: UILabel!
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        phoneLabel.text = person.phone
        mailLabel.text = person.email
        title = "\(person.firstName) \(person.lastName)"
    }
}
