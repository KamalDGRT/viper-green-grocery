//
//  HomePresenter.swift
//  GreenGrocery
//
//  Created by Kamal Sharma R on 28/06/22.
//
import Foundation

// Presenter protocol
protocol HomePresentation {
    func viewDidLoad() -> Void
}


class HomePresenter {
    weak var view: HomeView?
    var interactor: HomeUseCase
    var router: HomeRouting

    init(view: HomeView, interactor: HomeUseCase, router: HomeRouting) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
}

extension HomePresenter: HomePresentation {
    func viewDidLoad() {
        let homeModel = interactor.getTitle()
       
        // We are doing in this way because we want to make sure that
        // the view is loading in the main thread as the processing might
        // be happening in a different thread
        DispatchQueue.main.async { [weak self] in
            
            guard let `self` = self else {return}
            self.view?.updateTitle(title: homeModel.title)
        }
        
       
    }
}
