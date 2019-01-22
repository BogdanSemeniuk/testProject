//
//  StocksManager.swift
//  testProject
//
//  Created by Богдан Семенюк on 1/19/19.
//  Copyright © 2019 Богдан Семенюк. All rights reserved.
//

import Foundation

protocol StocksManager {
    func fetch()
}

final class StocksManagerImplementation: StocksManager {
    
    private let urlSession: URLSession
    
    init(urlSession: URLSession) {
        self.urlSession = urlSession
    }
    
    func fetch() {
    }
}
