//
//  ARContainerView.swift
//  arartattractors
//
//  Created by Prakhar Singh on 2023/04/28.
//

import SwiftUI

struct ARContainerView: UIViewControllerRepresentable {
    typealias UIViewControllerType = ARViewController
    let figure: Figure

    func makeCoordinator() -> Coordinator {
        return Coordinator(self)
    }

    func makeUIViewController(context: Context) -> ARViewController {
        return ARViewController(figure: figure)
    }

    func updateUIViewController(_ uiViewController: ARViewController,
                                context: Context) {
    }

    class Coordinator: NSObject {
        var parent: ARContainerView
        init(_ parent: ARContainerView) {
            self.parent = parent
        }
    }
}
