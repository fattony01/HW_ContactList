//
//  TabBarController.swift
//  HW_ContactList
//
//  Created by Anton Kondratenko on 05.07.2023.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewController()
    }
    
    private func setupViewController() {
        guard let firstContactListVS = viewControllers?.first as? FirstContactListViewController else { return }
        guard let secondContactListVS = viewControllers?.last as? SecondContactListViewController else { return }
        
        let persons = Person.getPersons()
        firstContactListVS.persons = persons
        secondContactListVS.persons = persons
    }
}
