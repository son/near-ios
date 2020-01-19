//
//  ViewController.swift
//  near-ios
//
//  Created by Takeru Sato on 2020/01/19.
//  Copyright © 2020 son. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        navigationController?.navigationBar.tintColor = Color.mainRed

        view.addGestureRecognizer(UIPanGestureRecognizer(
            target: navigationController?.value(forKey: "_cachedInteractionController"),
            action: Selector(("handleNavigationTransition:"))))
    }
}
