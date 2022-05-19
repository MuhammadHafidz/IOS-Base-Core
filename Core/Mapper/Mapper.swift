//
//  Mapper.swift
//  Core
//
//  Created by Enygma System on 19/05/22.
//

import Foundation

public protocol Mapper {
    associatedtype Response
    associatedtype Entity
    associatedtype Domain
    
    func transformResponseToEntity(response: Response) -> Entity
    func transformEntityToDomain(entity: Entity) -> Domain
}
