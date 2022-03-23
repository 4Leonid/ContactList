//
//  TabBarViewController.swift
//  ContactList
//
//  Created by EkaterinaP on 23.03.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    //MARK - Public Properties
    var persons: [Person] = []
    
    //MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let data = DataManager()
        
        for _ in 1...data.firstNames.count {
            let person = Person(
                firstName: data.firstNames.randomElement()!,
                secondName: data.secondNames.randomElement()!,
                phone: data.phones.randomElement()!,
                eMail: data.eMails.randomElement()!
            )
            persons.append(person)
            data.firstNames.removeAll { $0 == person.firstName }
            data.secondNames.removeAll { $0 == person.secondName }
            data.phones.removeAll { $0 == person.phone }
            data.eMails.removeAll { $0 == person.eMail }
        }
        
        for child in children {
            guard let navigationVC = child as? UINavigationController else { return }
            if let contactListVC = navigationVC.topViewController as? ContactListViewController {
                contactListVC.persons = persons
            } else if let detailListVC = navigationVC.topViewController as? ContactDetailViewController {
                detailListVC.persons = persons
            }
        }
    }
}
