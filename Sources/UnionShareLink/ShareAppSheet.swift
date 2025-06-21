//
//  SwiftUIView.swift
//  union-share-link
//
//  Created by Ben Sage on 4/22/25.
//

import SwiftUI

struct ShareAppSheet: UIViewControllerRepresentable {
    @Environment(\.dismiss) var dismiss

    var items: [Any] = []

    func makeUIViewController(context: Context) -> UIActivityViewController {
        let activityViewController = UIActivityViewController(
            activityItems: items,
            applicationActivities: nil
        )
        activityViewController.completionWithItemsHandler = { _, completed, _, error in
            if completed, error == nil {
                // Can track the completion event here
                dismiss()
            }
        }
        activityViewController.sheetPresentationController?.prefersGrabberVisible = false
        return activityViewController
    }

    func updateUIViewController(
        _ uiViewController: UIActivityViewController,
        context: Context
    ) { }
}

#Preview {
    ShareAppSheet()
}
