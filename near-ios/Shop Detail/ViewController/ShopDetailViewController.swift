//
//  ShopDetailViewController.swift
//  near-ios
//
//  Created by Takeru Sato on 2020/01/19.
//  Copyright © 2020 son. All rights reserved.
//

import UIKit

final class ShopDetailViewController: UIViewController {

    @IBOutlet private weak var detailView: ShopDetailView!
    @IBOutlet private weak var bottomView: ShopDetailBottomView!

    private var urls = [URL]()

    static func instantiate(urls: [URL]) -> ShopDetailViewController {
        let viewController = ShopDetailViewController.instantiate()
        viewController.urls = urls
        return viewController
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        detailView.urls = urls


        bottomView.onTapCall = { [weak self] in

        }

        bottomView.onTapMap = { [weak self] in

        }

    }
}
