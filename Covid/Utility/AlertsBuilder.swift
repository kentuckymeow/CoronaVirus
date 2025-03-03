//
//  AlertsBuilder.swift
//  Covid
//
//  Created by Arseni Khatsuk on 17.12.2024.
//

import UIKit

protocol IAlertsBuilder {
     func buildOkAlert(with title: String, message: String, completion: @escaping () -> Void) -> UIViewController
}
struct AlertsBuilder: IAlertsBuilder {
     func buildOkAlert(with title: String, message: String = "", completion: @escaping () -> Void) -> UIViewController {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: Constants.okString, style: .default, handler: { _ in
            completion()
        }))
        alertController.view.tintColor = UIColor.theme.orange
        return alertController
    }
}
