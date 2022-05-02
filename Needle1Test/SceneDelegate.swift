//
//  SceneDelegate.swift
//  Needle1Test
//
//  Created by Leonardo Maia Pugliese on 08/07/21.
//

import UIKit
import NeedleFoundation

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        guard let windowScene = (scene as? UIWindowScene) else { return }
        registerProviderFactories()

        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        let rootComponent = RootComponent()
        window?.rootViewController = rootComponent.rootViewController
        window?.makeKeyAndVisible()
        
    }
}

