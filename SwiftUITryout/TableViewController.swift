//
//  TableViewController.swift
//  SwiftUITryout
//
//  Created by Leo Zhao on 2020-06-17.
//  Copyright © 2020 Leo Zhao. All rights reserved.
//

import SwiftUI
import UIKit

struct TableViewController: UIViewControllerRepresentable {
    @Binding var users: [User]
    
    func makeUIViewController(context: Context) -> UsersTableViewController {
        let controller = UsersTableViewController(style: .plain)
        //controller.users = users
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UsersTableViewController, context: Context) {
        uiViewController.users = users
    }
}
