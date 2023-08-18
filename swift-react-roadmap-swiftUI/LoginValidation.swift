//
//  LoginValidation.swift
//  swift-react-roadmap-swiftUI
//
//  Created by maksims.laitans on 15/08/2023.
//

import Foundation

struct LoginValidation: Equatable {
    var name: String = ""
    var code: Int?
    var pass: String = ""
    var repeatPass: String = ""
    
    var isValid: Bool {
        nameIsvalid() && codeIsValid() && passIsValid() && repeatPassIsValid()
    }
    
    private func nameIsvalid() -> Bool {
        !name.isEmpty
    }
    
    private func codeIsValid() -> Bool {
        if let value = code {
            return value % 3 == 0 ? true : false
        }
        return false
    }
    
    private func passIsValid() -> Bool {
        pass.count > 5
    }
    
    private func repeatPassIsValid() -> Bool {
        pass == repeatPass
    }
}
