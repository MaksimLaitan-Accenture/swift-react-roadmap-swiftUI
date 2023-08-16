//
//  TextField.swift
//  swift-react-roadmap-swiftUI
//
//  Created by maksims.laitans on 14/08/2023.
//

import SwiftUI

public extension TextField {
    func customField() -> some View {
        self.textFieldStyle(.roundedBorder)
            .autocorrectionDisabled(true)
            .textInputAutocapitalization(.never)
    }
}
