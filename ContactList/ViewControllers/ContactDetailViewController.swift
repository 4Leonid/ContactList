//
//  ContactDetailViewController.swift
//  ContactList
//
//  Created by EkaterinaP on 23.03.2022.
//

import UIKit

class ContactDetailViewController: UITableViewController {

    //MARK: - Public properties
    var persons: [Person]!

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
         persons.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].getFullName
    }
    
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath)

        let person = persons[indexPath.section]
        var content = cell.defaultContentConfiguration()
        if indexPath.row == 0 {
            content.image = UIImage(systemName: "phone")
            content.text = person.phone
        } else {
            content.image = UIImage(systemName: "mail")
            content.text = person.eMail
        }
        cell.contentConfiguration = content

        return cell
    }
}
