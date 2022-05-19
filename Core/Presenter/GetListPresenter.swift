//
//  GetListPresenter.swift
//  Core
//
//  Created by Enygma System on 19/05/22.
//

import SwiftUI
import RxSwift

public class GetListPresenter<Request, Response, Interactor: UseCase>: ObservableObject
where Interactor.Request == Request, Interactor.Response == [Response]{
    
    private var disposeBag: DisposeBag = DisposeBag()
    
    private let _useCase: Interactor
    
    @Published public var list: [Response] = []
    @Published public var errorMessage: String = ""
    @Published public var isLoading: Bool = false
    @Published public var isError: Bool = false
    
    public init(useCase: Interactor){
        _useCase = useCase
    }
    
    public func getList(request: Request?) {
        isLoading = true
        _useCase.execute(request: request)
            .observe(on: MainScheduler.instance)
            .subscribe { result in
                self.list = result
            } onError: { error in
                self.errorMessage = error.localizedDescription
                self.isError = true
            } onCompleted: {
                self.isLoading = false
            }.disposed(by: disposeBag)
    }
}
