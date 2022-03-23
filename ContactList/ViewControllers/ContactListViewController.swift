//
//  ContactListViewController.swift
//  ContactList
//
//  Created by EkaterinaP on 23.03.2022.
//

import UIKit

class ContactListViewController: UITableViewController {
    
    //MARK: - Public properties
    var persons: [Person]!
    
    //MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 50
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        
        let person = persons[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.getFullName
        cell.contentConfiguration = content
        
        return cell
    }
}
