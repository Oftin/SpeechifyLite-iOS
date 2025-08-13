//
//  AppView.swift
//  SpeechifyLite
//
//  Created by Kamil Bobrowski on 13/08/2025.
//

import SwiftUI
import ComposableArchitecture

struct AppView: View {
    let store: StoreOf<AppFeature>

    var body: some View {
        WithViewStore(self.store, observe: { $0 }) { viewStore in
            VStack {
                Image(systemName: "books.vertical.fill")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello in Speechify Lite!")
            }
        }
    }
}
