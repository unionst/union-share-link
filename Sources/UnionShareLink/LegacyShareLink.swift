//
//  LegacyShareLink.swift
//  union-share-link
//
//  Created by Ben Sage on 4/22/25.
//

import SwiftUI

public struct LegacyShareLink<Label: View>: View {
    public var items: [Any]
    public var label: Label

    public init(items: [Any], @ViewBuilder label: () -> Label) {
        self.items = items
        self.label = label()
    }

    public init(item: Any, @ViewBuilder label: () -> Label) {
        self.items = [item]
        self.label = label()
    }

    @State private var showShare = false

    public var body: some View {
        Button {
            showShare = true
        } label: {
            label
        }
        .sheet(isPresented: $showShare) {
            ShareAppSheet(items: items)
                .presentationDragIndicator(.hidden)
                .presentationDetents([.medium, .large])
        }
        .onChange(of: showShare) {
            // Can handle the change here
        }
    }
}

#Preview {
    LegacyShareLink(item: "Shareable") {
        Text("Share me")
    }
}
