//
//  HomeRouter.swift
//  GreenGrocery
//
//  Created by Kamal Sharma R on 28/06/22.
//

import UIKit

// Router Protocol
protocol HomeRouting {
    
}

class HomeRouter {
    var viewController: UIViewController
    
    init(view: UIViewController) {
        self.viewController = view
    }
}

extension HomeRouter: HomeRouting {
    
}
