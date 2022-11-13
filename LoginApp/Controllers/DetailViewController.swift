//
//  DetailViewController.swift
//  LoginApp
//
//  Created by Sosin Vladislav on 13.11.2022.
//

import UIKit

final class DetailViewController: UIViewController {

    @IBOutlet weak var infiLabel: UITextView!
    var user = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "More information"
        infiLabel.text = user.person.moreInformation
    }
}
