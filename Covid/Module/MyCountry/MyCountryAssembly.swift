//
//  MyCountryAssembly.swift
//  Covid
//
//  Created by Arseni Khatsuk on 17.12.2024.
//

import UIKit

final class MyCountryAssembly {
    static func configure(_ dependencies: IDependencies) -> UIViewController {
        return dependencies.moduleContainer.getMyCountryView()
    }
}
