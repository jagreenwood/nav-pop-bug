//
//  Domain.swift
//  Scratch
//
//  Created by Jeremy Greenwood on 3/3/21.
//

import ComposableArchitecture
import Foundation

struct FirstDomain: Equatable {
    struct State: Equatable {
        var push = false
        var secondState = SecondDomain.State()
    }

    enum Action: Equatable {
        case push(Bool)
        case secondState(SecondDomain.Action)
    }

    struct Environment {
    }

    static let reducer = Reducer<State, Action, Environment>.combine(
        SecondDomain.reducer
            .pullback(state: \.secondState,
                      action: /Action.secondState,
                      environment: { _ in SecondDomain.Environment() }),
        Reducer  { state, action, _ in
            switch action {
            case .push(let push):
                state.push = push
                return .none
            case .secondState(let action):
                return .none
            }
        }
    )
}
