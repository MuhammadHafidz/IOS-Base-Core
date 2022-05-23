//
//  LocaleDataSource.swift
//  Core
//
//  Created by Enygma System on 19/05/22.
//

import RxSwift

public protocol LocaleDataSource {
    associatedtype Request
    associatedtype Response
    
    func list(request: Request?) -> Observable<[Response]>
    func add(entities: Response) -> Observable<Bool>
    func get(id: String) -> Observable<Response>
    func update(id: Int, entity: Response) -> Observable<Bool>
    func delete(id: Int) -> Observable<Bool>
}
