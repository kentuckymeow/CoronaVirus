//
//  AnalyticsReporterService.swift
//  Covid
//
//  Created by Arseni Khatsuk on 17.12.2024.
//

import Foundation

protocol IAnalyticsReporterService {
    func reportEvent(with message: String, parameters: [String: Any]?)
}

struct AnalyticsReporterService: IAnalyticsReporterService {
    func reportEvent(with message: String, parameters: [String: Any]?) {
        Log.info(message)
    }
}
