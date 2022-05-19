//
//  UseCase.swift
//  Core
//
//  Created by Enygma System on 19/05/22.
//

import RxSwift

public protocol UseCase {
    associatedtype Request
    associatedtype Response
    
    func execute(request: Request?) -> Observable<Response>
}
