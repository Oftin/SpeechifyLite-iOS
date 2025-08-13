//
//  SpeechifyLiteApp.swift
//  SpeechifyLite
//
//  Created by Kamil Bobrowski on 13/08/2025.
//

import SwiftUI
import ComposableArchitecture

@main
struct SpeechifyLiteApp: App {
    static let store = Store(
        initialState: AppFeature.State(),
        reducer: { AppFeature() }
    )

    var body: some Scene {
        WindowGroup {
            AppView(store: Self.store)
        }
    }
}
