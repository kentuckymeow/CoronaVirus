//
//  CheckDevice.swift
//  Covid
//
//  Created by Arseni Khatsuk on 17.12.2024.
//
import UIKit

enum Support {
    static let isIphoneSEFirstGeneration: Bool = {
        return UIDevice.current.userInterfaceIdiom == .phone &&
        max(UIScreen.main.bounds.width, UIScreen.main.bounds.height) == 568
    }()
}
