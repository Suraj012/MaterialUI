//
//  TF+Event.swift
//  MaterialUI
//
//  Created by Prashant Shrestha on 5/22/20.
//  Copyright © 2020 Inficare. All rights reserved.
//

import UIKit


extension TextField {
    func setEventTargets() {
        self.addTarget(self, action: #selector(editingDidBegin), for: .editingDidBegin)
        
        self.addTarget(self, action: #selector(editingDidEnd), for: .editingDidEnd)
    }
    
    @objc private func editingDidBegin() {
        if trailingViewState == .success {
            trailingViewState = .default
        }
    }
    
    @objc private func editingDidEnd() {
        secureTextEndEditing()
        trailingViewStateConfiguration(state: trailingViewState)
    }
}
