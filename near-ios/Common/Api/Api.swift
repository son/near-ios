//
//  Api.swift
//  near-ios
//
//  Created by Takeru Sato on 2020/03/18.
//  Copyright © 2020 son. All rights reserved.
//

import Foundation

final class Api {

    private let key = "8908d8817cc41505"
    private let url = URL(string: "http://webservice.recruit.co.jp/hotpepper/gourmet/v1/")!

    private var page = 0
    private var limit = 20

    func queryParameters(place: Place) -> [URLQueryItem] {
        return [
            URLQueryItem(name: "key", value: key),
            URLQueryItem(name: "format", value: "json"),
            URLQueryItem(name: "start", value: "\((page - 1) * limit)"),
            URLQueryItem(name: "count", value: "\(limit)"),
            URLQueryItem(name: "lng", value: "\(place.longitude)"),
            URLQueryItem(name: "lat", value: "\(place.latitude)")
        ]
    }

    func request(place: Place) -> URLRequest {
        var components = URLComponents(string: url.absoluteString)
        components?.queryItems = queryParameters(place: place)
        var request = URLRequest(url: components!.url!)
        request.httpMethod = "GET"
        return request
    }

    func getShops(place: Place) {
        page += 1

        log("REQUEST SENT: ", request(place: place).url)
        URLSession.shared.dataTask(with: request(place: place)) { data, response, error in
            
            guard let data = data else { return }
            log(String(bytes: data, encoding: .utf8))
            
        }.resume()
    }
}
