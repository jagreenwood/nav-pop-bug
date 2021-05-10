//
//  ContentView.swift
//  Shared
//
//  Created by Jeremy Greenwood on 3/3/21.
//

import SwiftUI

struct FirstView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(
                    destination:
                        SecondView(observer: Observer())
                ) {
                    Text("Push")
                }
            }
        }
    }
}
