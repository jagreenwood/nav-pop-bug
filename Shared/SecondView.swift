//
//  SecondView.swift
//  Scratch
//
//  Created by Jeremy Greenwood on 3/3/21.
//

import ComposableArchitecture
import SwiftUI

struct SecondView: View {
    var store: Store<SecondDomain.State, SecondDomain.Action>

    var body: some View {
        WithViewStore(store) { viewStore in
            VStack {
                NavigationLink(
                    destination:
                        Text("Pushed").onAppear {
                            viewStore.send(.loading(true))
                        }) {
                    Text("Push me")
                }

                NavigationLink(
                    destination:
                        Text("Pushed")) {
                    Text("Not me")
                }
            }
        }
    }
}
