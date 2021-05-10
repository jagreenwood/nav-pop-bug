//
//  SecondView.swift
//  Scratch
//
//  Created by Jeremy Greenwood on 3/3/21.
//

import SwiftUI

class Observer: ObservableObject {
    @Published var loading = false
}

struct SecondView: View {
    @ObservedObject var observer: Observer

    var body: some View {
        VStack {
            NavigationLink(
                destination:
                    Text("Pushed")
                    .onAppear {
                        observer.loading.toggle()
                    }
            ) {
                Text("Tap me")
            }

            NavigationLink(
                destination:
                    Text("Pushed")) {
                Text("Not me")
            }
        }
    }
}
