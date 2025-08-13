//
//  LibraryView.swift
//  SpeechifyLite
//
//  Created by Kamil Bobrowski on 13/08/2025.
//

import SwiftUI
import ComposableArchitecture

struct LibraryView: View {
    let store: StoreOf<LibraryFeature>
    @State private var isPickerPresented: Bool = false

    var body: some View {
        WithViewStore(self.store, observe: { $0 }) { viewStore in
            NavigationView {
                List(viewStore.documents) { document in
                    Text(document.name)
                }
                .navigationTitle("Library")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button("Add") {
                            isPickerPresented = true
                        }
                    }
                }
            }
            .sheet(isPresented: $isPickerPresented) {
                DocumentPickerView { url in
                    viewStore.send(.addDocument(url))
                }
            }
        }
    }
}
