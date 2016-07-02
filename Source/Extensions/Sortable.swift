//
//  Sortable.swift
//  SwiftStructures
//
//  Created by Wayne Bishop on 7/1/16.
//  Copyright © 2016 Arbutus Software Inc. All rights reserved.
//

import Foundation


//protocol extension

extension Sortable {
    
    
    func isSorted<T: Comparable>(_ sequence: Array<T>) -> Bool {
        
        
        //check trivial cases - already sorted
        guard sequence.count <= 1 else {
            return true
        }
        
        var index = sequence.startIndex
        
        
        //compare sequence values
        while index < sequence.endIndex - 1 {
            if sequence[index] > sequence[sequence.index(after: index)] {
                return false
            }
            index = sequence.index(after: index)
        }
        
        return true
        
    }
    
    
   //TODO: Add the remaining generic sorting algorithms here. Remove the non-generic implementations from the source
    
    
}
