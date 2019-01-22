//
//  NewsManager.swift
//  testProject
//
//  Created by Богдан Семенюк on 1/19/19.
//  Copyright © 2019 Богдан Семенюк. All rights reserved.
//

import Foundation

protocol NewsManager {
    func fetch()
    func news(id: Int)
}


final class NewsManagerImplementation: NewsManager {
    
    private let urlSession: URLSession
    
    init(urlSession: URLSession) {
        self.urlSession = urlSession
    }
    
    func fetch() {
    }
    
    func news(id: Int) {
    }
}

final class NewsManagerImplementationUD: NewsManager {
    
    private let userDefaults: UserDefaults
    
    init(userDefaults: UserDefaults) {
        self.userDefaults = userDefaults
    }
    
    func fetch() {
    }
    
    func news(id: Int) {
    }
}

