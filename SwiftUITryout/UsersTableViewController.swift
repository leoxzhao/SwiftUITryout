//
//  UsersTableViewController.swift
//  SwiftUITryout
//
//  Created by Leo Zhao on 2020-06-17.
//  Copyright © 2020 Leo Zhao. All rights reserved.
//

import UIKit
import SwiftUI

class UsersTableViewController: UITableViewController {
    var users: [User]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "UIKit Table"
        
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "identifier")
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return section == 0 ? users.count : 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "identifier", for: indexPath)
        cell.textLabel?.text = users[indexPath.row].firstName + " " + users[indexPath.row].lastName
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = UIHostingController(rootView: UserProfileView(user: users[indexPath.row]))
        //present(vc, animated: true, completion: nil)
        if let navController = navigationController {
            navController.pushViewController(vc, animated: true)
        }
    }
}
