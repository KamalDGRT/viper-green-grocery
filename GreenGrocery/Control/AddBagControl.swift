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
    
    static var nibName: String = "AddBagControl"
    
    @IBAction func addToBag(_ sender: Any) {
        
    }
    
    @IBAction func incrementButton(_ sender: Any) {
        
    }
    
    @IBAction func decrementButton(_ sender: Any) {
       
    }
}
