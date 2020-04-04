//
//  Xib+.swift
//  near-ios
//
//  Created by Takeru Sato on 2020/04/04.
//  Copyright © 2020 son. All rights reserved.
//

import UIKit

protocol NibLoadable: NibBundler {}

extension NibLoadable where Self: UIView {
    static func loadFromNib() -> Self {
        guard let view = nib.instantiate(withOwner: nil, options: nil).first as? Self else {
            fatalError("The nib \(nib) expected its root view to be of type \(self)")
        }
        return view
    }
}


protocol NibBundler: AnyObject {
    static var nib: UINib { get }
    static var nibName: String { get }
    static var nibBundle: Bundle? { get }
}

extension NibBundler {
    static var nib: UINib {
        UINib(nibName: nibName, bundle: nibBundle)
    }
    static var nibName: String {
        String(describing: self)
    }
    static var nibBundle: Bundle? {
        Bundle(for: self)
    }
}


protocol XibOwnerInstantiatable: NibBundler {}

extension XibOwnerInstantiatable where Self: UIView {
    func loadNibContent() {
        for case let view as UIView in Self.nib.instantiate(withOwner: self, options: nil) {
            addSubview(view)
            view.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                view.topAnchor.constraint(equalTo: topAnchor),
                view.rightAnchor.constraint(equalTo: rightAnchor),
                view.bottomAnchor.constraint(equalTo: bottomAnchor),
                view.leftAnchor.constraint(equalTo: leftAnchor)
            ])
        }
    }
}
