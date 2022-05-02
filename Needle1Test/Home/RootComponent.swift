//
//  RootComponent.swift
//  Needle1Test
//
//  Created by Leonardo Maia Pugliese on 08/07/21.
//

import NeedleFoundation
import UIKit

class RootComponent: BootstrapComponent {
    
    var userInfo: UserDataParseable {
        return shared { UserData() }
    }
    
    var detailComponent: DetailComponent {
        return DetailComponent(parent: self)
    }
    
    var rootViewController: UIViewController {
        return RootViewController(detailBuilder: detailComponent)
    }
}
