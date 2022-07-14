//
//  ViewLoadable.swift
//  GreenGrocery
//
//  Created by Kamal Sharma R on 14/07/22.
//

import Foundation

public protocol ViewLoadable: AnyObject {
    static var nibName: String { get }
}

public extension ViewLoadable {
    static func loadFromNib() -> Self {
        return loadFromNib(from: Bundle.init(for: self))
    }
    
    static func loadFromNib(from bundle: Bundle) -> Self {
        return bundle.loadNibNamed(self.nibName, owner: nil, options: nil)?.first as! Self
    }
}
