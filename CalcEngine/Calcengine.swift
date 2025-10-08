//
//  Calcengine.swift
//  CalcEngine
//
//  Created by Aden Vansevenant on 08/10/2025.
//

import Foundation

class Calcengine {
    var result: String = ""
    var stack: [Double] = []

    func getalopschuiven(_ number: Double) {
        stack.append(number)
        result = "Pushed \(number)"
    }

    func enter() {
        result = "Entered: \(stack.last ?? 0)"
    }

    func clear() {
        stack.removeAll()
        result = "Cleared"
    }

    func optellen() {
        if stack.count >= 2 {
            let b = stack.popLast()!
            let a = stack.popLast()!
            let res = a + b
            stack.append(res)
            result = "\(a) + \(b) = \(res)"
        } else {
            result = "Error: not enough values"
        }
    }

    func aftrekken() {
        if stack.count >= 2 {
            let b = stack.popLast()!
            let a = stack.popLast()!
            let res = a - b
            stack.append(res)
            result = "\(a) - \(b) = \(res)"
        } else {
            result = "Error: not enough values"
        }
    }

    func maal() {
        if stack.count >= 2 {
            let b = stack.popLast()!
            let a = stack.popLast()!
            let res = a * b
            stack.append(res)
            result = "\(a) * \(b) = \(res)"
        } else {
            result = "Error: not enough values"
        }
    }

    func delen() {
        if stack.count >= 2 {
            let b = stack.popLast()!
            let a = stack.popLast()!
            guard b != 0 else {
                result = "Error: divide by zero"
                return
            }
            let res = a / b
            stack.append(res)
            result = "\(a) / \(b) = \(res)"
        } else {
            result = "Error: not enough values"
        }
    }

    func showStack() {
        result = stack.map { "\($0)" }.joined(separator: "\n")
    }
}
