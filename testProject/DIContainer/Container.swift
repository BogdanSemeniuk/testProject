//
//  Container.swift
//  testProject
//
//  Created by Богдан Семенюк on 1/19/19.
//  Copyright © 2019 Богдан Семенюк. All rights reserved.
//

import UIKit
import Swinject
import SwinjectStoryboard


class DIConainer {
    static var resolver: Resolver = Assembler([ViewControllerAssembly(),
                                               ManagersAssembly()],
                                              container: Container()).resolver
}
