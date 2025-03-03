//
//  SearchCountryAssembly.swift
//  Covid
//
//  Created by Arseni Khatsuk on 17.12.2024.
//

import UIKit

final class SearchCountryAssembly {
    static func configure(_ dependencies: IDependencies) -> UIViewController {
        return dependencies.moduleContainer.getSearchCountryView()
    }
}
