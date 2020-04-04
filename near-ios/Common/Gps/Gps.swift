//
//  Gps.swift
//  near-ios
//
//  Created by Takeru Sato on 2020/04/04.
//  Copyright © 2020 son. All rights reserved.
//

import Foundation
import CoreLocation

final class Gps: NSObject, CLLocationManagerDelegate {

    private let manager = CLLocationManager()

    var onUpdateLocation: (() -> Void)?

    func requestAuthorization() {
        manager.requestWhenInUseAuthorization()
        checkAuthorization()
    }

    private func checkAuthorization() {
        switch CLLocationManager.authorizationStatus() {
        case .authorized, .authorizedAlways, .authorizedWhenInUse:
            manager.delegate = self
            manager.distanceFilter = 10
            manager.startUpdatingLocation()
        case .denied, .notDetermined, .restricted:
            Alert.showNeedGpsAuthorization { [weak self] in
                self?.requestAuthorization()
            }
        default:
            break
        }
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.first else { return }


        onUpdateLocation?()
    }
}

struct Address {
    let place: Place
    let prefecture: String
    let city: String
    let addressCode: String
}
