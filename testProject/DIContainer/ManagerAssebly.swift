//
//  ManagerAssebly.swift
//  testProject
//
//  Created by Богдан Семенюк on 1/19/19.
//  Copyright © 2019 Богдан Семенюк. All rights reserved.
//

import Swinject

final class ManagersAssembly: Assembly {
    func assemble(container: Container) {
        container.register(URLSession.self, factory: { resolver in
            URLSession(configuration: .default)
        }).inObjectScope(.container)
        
        container.register(NewsManager.self, factory: { resolver in
            let session = resolver.resolve(URLSession.self)!
            return NewsManagerImplementation(urlSession: session)
        })
        container.register(StocksManager.self, factory: { resolver in
            let session = resolver.resolve(URLSession.self)!
            return StocksManagerImplementation(urlSession: session)
        })
    }
}

