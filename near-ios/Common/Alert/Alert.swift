//
//  Alert.swift
//  near-ios
//
//  Created by Takeru Sato on 2020/04/04.
//  Copyright © 2020 son. All rights reserved.
//

import ALRT

enum Alert {

    static func showNeedGpsAuthorization(onTapPositive: (() -> Void)? = nil) {
        ALRT.create(.alert, title: "位置情報の取得を許可してください", message: "このアプリは位置情報を取得しないと使用できません")
            .addAction("OK", style: .default, preferred: true) { _, _ in
                onTapPositive?()
            }
            .show()
    }
}
