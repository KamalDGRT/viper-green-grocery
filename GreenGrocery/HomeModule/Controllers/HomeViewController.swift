//
//  ViewController.swift
//  GreenGrocery
//
//  Created by Kamal Sharma R on 28/06/22.
//

import UIKit

// View Controller protocol
protocol HomeView: AnyObject {
    func updateTitle(title: String) -> (Void)
}

class HomeViewController: UIViewController {
    
    @IBOutlet weak var helloLabel: UILabel!
    
    lazy var addBagControl: AddBagControl = {
        let control = AddBagControl.loadFromNib()
        let viewModel = AddBagViewModel(title: "ADD TO BAG", stepValue: 0)
        control.configure(using: viewModel)
        return control
    }()
    
    var presenter: HomePresentation!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(addBagControl)
        // Do any additional setup after loading the view.
        
        presenter.viewDidLoad()
        // helloLabel.text = "Hello Viper"
    }
}

extension HomeViewController: HomeView {
    func updateTitle(title: String) {
        helloLabel.text = title
    }
}
