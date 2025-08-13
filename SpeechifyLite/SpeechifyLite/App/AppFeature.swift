//
//  AppFeature.swift
//  SpeechifyLite
//
//  Created by Kamil Bobrowski on 13/08/2025.
//

import ComposableArchitecture

struct AppFeature: Reducer {
    struct State: Equatable {
        var library: LibraryFeature.State = .init()
    }

    enum Action {
        case library(LibraryFeature.Action)
    }

    var body: some ReducerOf<Self> {
        Scope(state: \.library, action: /Action.library) {
            LibraryFeature()
        }
    }
}
