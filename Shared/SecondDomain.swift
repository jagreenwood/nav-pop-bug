//
//  SecondDomain.swift
//  Scratch
//
//  Created by Jeremy Greenwood on 3/3/21.
//

import ComposableArchitecture
import Foundation

struct SecondDomain: Equatable {
    struct State: Equatable {
        var loading = false
    }

    enum Action: Equatable {
        case loading(Bool)
    }

    struct Environment {
    }

    static let reducer = Reducer<State, Action, Environment> { state, action, _ in
        switch action {
        case .loading(let loading):
            state.loading = loading
            return .none
        }
    }
}
