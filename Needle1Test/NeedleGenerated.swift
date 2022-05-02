

import Foundation
import NeedleFoundation
import UIKit

// swiftlint:disable unused_declaration
private let needleDependenciesHash : String? = nil

// MARK: - Registration

public func registerProviderFactories() {
    __DependencyProviderRegistry.instance.registerDependencyProviderFactory(for: "^->RootComponent") { component in
        return EmptyDependencyProvider(component: component)
    }
    __DependencyProviderRegistry.instance.registerDependencyProviderFactory(for: "^->RootComponent->DetailComponent") { component in
        return DetailDependencyb171f3bdca6113e7a5d9Provider(component: component)
    }
    
}

// MARK: - Providers

private class DetailDependencyb171f3bdca6113e7a5d9BaseProvider: DetailDependency {
    var userInfo: UserDataParseable {
        return rootComponent.userInfo
    }
    private let rootComponent: RootComponent
    init(rootComponent: RootComponent) {
        self.rootComponent = rootComponent
    }
}
/// ^->RootComponent->DetailComponent
private class DetailDependencyb171f3bdca6113e7a5d9Provider: DetailDependencyb171f3bdca6113e7a5d9BaseProvider {
    init(component: NeedleFoundation.Scope) {
        super.init(rootComponent: component.parent as! RootComponent)
    }
}
