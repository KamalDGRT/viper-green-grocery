//
//  HomeInteractor.swift
//  GreenGrocery
//
//  Created by Kamal Sharma R on 28/06/22.
//

// Interactor Protocol
protocol HomeUseCase {
    func getTitle() -> HomeModel
}

class HomeInteractor {
    
}

extension HomeInteractor: HomeUseCase {
    func getTitle() -> HomeModel {
        return HomeModel(title: "Hello World ~I")
    }
}
