//
//  LibraryFeature.swift
//  SpeechifyLite
//
//  Created by Kamil Bobrowski on 13/08/2025.
//

import ComposableArchitecture
import Foundation

struct LibraryFeature: Reducer {
    struct State: Equatable {
        var documents: [Document] = []
    }

    enum Action {
        case addDocument(URL)
    }

    func reduce(into state: inout State, action: Action) -> Effect<Action> {
        switch action {
            case .addDocument(let url):
                let newDocument = Document(id: UUID(), name: url.lastPathComponent, url: url)
                state.documents.append(newDocument)
                return .none
        }
    }
}

struct Document: Equatable, Identifiable {
    let id: UUID
    let name: String
    let url: URL
}
