//
//  DetailViewController.swift
//  ContactList
//
//  Created by EkaterinaP on 23.03.2022.
//

import UIKit

class DetailViewController: UIViewController {
    
    //MARK: - @IBOutlet
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var mailLabel: UILabel!
    
    //MARK: - Public properties
    var person: Person!

    //MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()

        title = person.getFullName
        phoneLabel.text = "Phone: \(person.phone)"
        mailLabel.text = "Email: \(person.eMail)"
    }
}
