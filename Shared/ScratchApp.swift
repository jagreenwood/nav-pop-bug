//
//  ScratchApp.swift
//  Shared
//
//  Created by Jeremy Greenwood on 3/3/21.
//

import ComposableArchitecture
import SwiftUI

@main
struct ScratchApp: App {
    var body: some Scene {
        WindowGroup {
            FirstView(store: Store(
                            initialState: FirstDomain.State(),
                            reducer: FirstDomain.reducer,
                            environment: FirstDomain.Environment()))
        }
    }
}
