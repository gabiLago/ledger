//
//  AccountingRecord.swift
//  Ledger
//
//  Created by Gabriel Lago Blasco on 25/04/2019.
//  Copyright © 2019 Gabi Lago Blasco. All rights reserved.
//

import Foundation

typealias Tags = Set<Tag>
// Class Cluster

class AccountingRecord{
    let value: Value
    let tags: Tags
    let category: Category
    
    fileprivate init(value: Value, tags: Tags, category: Category) {
        (self.value, self.tags, self.category) = (value, tags, category)
    }
    
    // métodos factory que crean las subclases específicas
    static func cashRecord(value: Value) -> AccountingRecord {
        return CashRecord(value: value, tags: [.cash], category: .assets)
    }
    
    static func inventoryRecord(value: Value) -> AccountingRecord {
        return InventoryRecord(value: value, tags: [.inventory], category: .assets)
    }
    
}

fileprivate class CashRecord: AccountingRecord {
    
}

fileprivate class InventoryRecord: AccountingRecord {
    
}

extension AccountingRecord: Equatable {
    static func == (lhs: AccountingRecord, rhs: AccountingRecord) -> Bool {
        return (lhs.value, lhs.tags, lhs.category) == (rhs.value, rhs.tags, rhs.category)
    }
}

extension AccountingRecord: Hashable {
    func hash(into hasher: inout Hasher){
        hasher.combine(value)
        hasher.combine(tags)
        hasher.combine(category)
    }
}

