//
//  WorldEntity.swift
//  Covid
//
//  Created by Arseni Khatsuk on 17.12.2024.
//

import CoreData

extension WorldEntity {
    @discardableResult
    static func make(context: NSManagedObjectContext, model: World) -> WorldEntity {
        let entity = WorldEntity(context: context)
        entity.newConfirmed = Int64(model.newConfirmed)
        entity.totalConfirmed = Int64(model.totalConfirmed)
        entity.newDeath = Int64(model.newDeaths)
        entity.totalDeath = Int64(model.totalDeaths)
        entity.newRecovered = Int64(model.newRecovered)
        entity.totalRecovered = Int64(model.totalRecovered)
        entity.date = model.date
        return entity
    }
}
