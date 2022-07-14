//
//  AddBagControl.swift
//  GreenGrocery
//
//  Created by Kamal Sharma R on 14/07/22.
//

import UIKit

class AddBagControl: UIControl, ViewLoadable {
    
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var stepLabel: UILabel!
    
    var viewModel: AddBagViewModel! {
        didSet {
            stepLabel.text = "\(viewModel.stepValue)"
            addButton.isHidden = (viewModel.showStepper)
            plusButton.isHidden = !(viewModel.showStepper)
            minusButton.isHidden = !(viewModel.showStepper)
            stepLabel.isHidden = !(viewModel.showStepper)
        }
    }
    
    static var nibName: String = "AddBagControl"
    
    @IBAction func addToBag(_ sender: Any) {
        print("Add to bag tapped")
        self.viewModel = self.viewModel.onAddToBag()
    }
    
    @IBAction func incrementButton(_ sender: Any) {
        print("Increment tapped")
        self.viewModel = self.viewModel.onIncrement()
    }
    
    @IBAction func decrementButton(_ sender: Any) {
        print("Decrement tapped")
        self.viewModel = self.viewModel.onDecrement()
    }
    
    func configure(using viewModel: AddBagViewModel) {
        self.viewModel = viewModel
        self.addButton.setTitle(viewModel.title, for: .normal)
    }
}
