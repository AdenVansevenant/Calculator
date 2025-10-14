//
//  Calcengine.swift
//  CalcEngine
//
//  Created by Aden Vansevenant on 08/10/2025.
//

import Foundation
@Observable
class Calcengine{
    var result: String = ""
    var stack: [Double] = []
   
    func getalopschuiven(_ number: Double) {
            guard number >= 0 && number <= 9 else { return }
            
            if stack.isEmpty {
                stack.append(number)
            } else {
                let oudGetal = stack.popLast()!
                let nieuwGetal = oudGetal * 10 + number
                stack.append(nieuwGetal)
            }
            showStack()
        }
    
    func enter() {
        stack.append(0)
        showStack()
    }
    
    func clear() {
        stack.removeAll()
        showStack()
    }
    
    func showStack(){
        result = stack.map { String($0) }.joined(separator: "\n")
    }
    
    func maal(){
        if stack.count >= 2 {
            let b = stack.popLast()!
            let a = stack.popLast()!
            stack.append(a * b)
            showStack()
        } else {
            result = "Fout: te weinig getallen\n" + result
        }
    }
    
    func delen(){
        if stack.count >= 2 {
            let b = stack.popLast()!
            let a = stack.popLast()!
            stack.append(a / b)
            showStack()
        } else {
            result = "Fout: te weinig getallen\n" + result
        }
    }
    
    func aftrekken(){
        if stack.count >= 2 {
            let b = stack.popLast()!
            let a = stack.popLast()!
            stack.append(a - b)
            showStack()
        } else {
            result = "Fout: te weinig getallen\n" + result
        }
    }
    
    func optellen(){
        if stack.count >= 2 {
            let b = stack.popLast()!
            let a = stack.popLast()!
            stack.append(a + b)
            showStack()
        } else {
            result = "Fout: te weinig getallen\n" + result
        }
        
    }
}
