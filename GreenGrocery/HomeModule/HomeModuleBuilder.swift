//
//  HomeModuleBuilder.swift
//  GreenGrocery
//
//  Created by Kamal Sharma R on 28/06/22.
//

import UIKit

class HomeModuleBuilder {
    static func build() -> UIViewController {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let view = storyboard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController

        let interactor = HomeInteractor()
        let router = HomeRouter(view: view)
        let presenter = HomePresenter(view: view, interactor: interactor, router: router)
        view.presenter = presenter
        
        
        return view
    }
}
