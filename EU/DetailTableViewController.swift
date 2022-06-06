//
//  DetailTableViewController.swift
//  EU
//
//  Created by Samuel Pena on 6/5/22.
//  Copyright © 2022 Samuel Pena. All rights reserved.
//

import UIKit

class DetailTableViewController: UITableViewController {
    @IBOutlet weak var saveBarButton: UIBarButtonItem!
    @IBOutlet weak var countryField: UITextField!
    @IBOutlet weak var capitalField: UITextField!
    
    var member: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if member == nil {
            member = ""
        }
        
        countryField.text = member
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        member = countryField.text
    }

    @IBAction func cancelButtonPressed(_ sender: UIBarButtonItem) {
        let isPresentingInAddMode = presentingViewController is UINavigationController
        if isPresentingInAddMode {
            dismiss(animated: true, completion: nil)
        } else {
            navigationController?.popViewController(animated: true)
        }
    }
}
