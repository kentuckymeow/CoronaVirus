//
//  OperationQueue+Extension.swift
//  Covid
//
//  Created by Arseni Khatsuk on 20.12.2024.
//

import UIKit

protocol OperationQueueBehavioral {
    static func mainAsyncIfNeeded(execute work: @escaping () -> Void)
}

extension OperationQueue: OperationQueueBehavioral {
    static func mainAsyncIfNeeded(execute work: @escaping () -> Void) {
        if Thread.isMainThread {
            work()
        } else {
            main.addOperation(work)
        }
    }
}
