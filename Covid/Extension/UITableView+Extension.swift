//
//  UITableView+Extension.swift
//  Covid
//
//  Created by Arseni Khatsuk on 20.12.2024.
//

import UIKit

extension UITableViewCell {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}

extension UITableView {
    func register(_ types: [UITableViewCell.Type]) {
        types.forEach { type in
            register(type, forCellReuseIdentifier: type.reuseIdentifier)
        }
    }
}
