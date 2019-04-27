//
//  ValuePresenter.swift
//  Ledger
//
//  Created by Gabriel Lago Blasco on 25/04/2019.
//  Copyright © 2019 Gabi Lago Blasco. All rights reserved.
//

import Foundation

protocol ValuePresenter {
    func present(value: Value) -> String
    // Añadir otras a medida que haga falta
}

extension ValuePresenter {
    func present(value: Value) -> String {
        return "\(value.amount) \(value.currency)"
    }
}

