//
//  ContentView.swift
//  Shared
//
//  Created by Jeremy Greenwood on 3/3/21.
//

import ComposableArchitecture
import SwiftUI

struct FirstView: View {
    let store: Store<FirstDomain.State, FirstDomain.Action>

    var body: some View {
        NavigationView {
            WithViewStore(store) { viewStore in
                VStack {
                    NavigationLink(
                        destination:
                            SecondView(
                                store: store.scope(
                                    state: \.secondState,
                                    action: FirstDomain.Action.secondState)),
                        isActive: viewStore.binding(
                            get: \.push,
                            send: FirstDomain.Action.push)) {
                        Button(action: { viewStore.send(.push(true)) }, label: {
                            Text("Push")
                        })
                    }
                }
            }
        }
    }
}
