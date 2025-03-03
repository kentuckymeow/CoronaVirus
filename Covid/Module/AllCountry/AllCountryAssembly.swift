//
//  AllCountryAssembly.swift
//  Covid
//
//  Created by Arseni Khatsuk on 17.12.2024.
//

import UIKit

final class AllCountryAssembly {
    static func configure(_ dependencies: IDependencies) -> UIViewController {
        return dependencies.moduleContainer.getAllCountryView()
    }
}
