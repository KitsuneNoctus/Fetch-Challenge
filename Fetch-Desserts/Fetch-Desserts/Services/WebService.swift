//
//  WebService.swift
//  Fetch-Desserts
//
//  Created by Henry Calderon on 8/21/24.
//

import Foundation

struct Resource<T> {
    let url: URL
    let parse: (Data) -> T?
}

final class WebService {
    func load<T>(resource: Resource<T>, completion: @escaping(T?)->()) {
        URLSession.shared.dataTask(with: resource.url) { data, response, error in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            }
            else if let data = data {
                DispatchQueue.main.async {
                    completion(resource.parse(data))
                }
            }
        }.resume()
    }
}
