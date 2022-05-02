//
//  DetailComponent.swift
//  Needle1Test
//
//  Created by Leonardo Maia Pugliese on 08/07/21.
//

import Foundation
import NeedleFoundation
import UIKit


protocol DetailDependency: Dependency {
    var userInfo: UserDataParseable { get }
}

protocol DetailBuilder {
    var detailViewController: UIViewController { get }
}

class DetailComponent: Component<DetailDependency>, DetailBuilder {
    
    var detailViewController: UIViewController {
        return DetailViewController(userData: dependency.userInfo)
    }
}

