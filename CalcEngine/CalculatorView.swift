//
//  CalculatorView.swift
//  CalcEngine
//
//  Created by Aden Vansevenant on 08/10/2025.
//

import SwiftUI

struct CalculatorView: View {
    @State  var calc = Calcengine()

    var body: some View {
        VStack {
            HStack{
                TextEditor(text: $calc.result)
                    .frame(width: 100, height: 150)
                    .border(.black)
                    .background(.white)
                    .padding()

                // Grid met knoppen
                Grid {
                    GridRow {
                        ForEach(7..<10) { number in
                            Button("\(number)") {
                                calc.getalopschuiven(Double(number))
                            }
                        }
                        Button("/") { calc.delen() }
                    }

                    GridRow {
                        ForEach(4..<7) { number in
                            Button("\(number)") {
                                calc.getalopschuiven(Double(number))

                            }
                        }
                        Button("*") { calc.maal() }
                    }

                    GridRow {
                        ForEach(1..<4) { number in
                            Button("\(number)") {
                                calc.getalopschuiven(Double(number))

                            }
                        }
                        Button("-") { calc.aftrekken() }
                    }

                    GridRow {
                        ForEach(0..<1) { number in
                            Button("\(number)") {
                                calc.getalopschuiven(Double(number))

                            }
                        }
                        Button("") { }
                        Button("") { }
                        Button("+") { calc.optellen() }
                    }

                    GridRow {
                        Button("Clear") { calc.clear() }
                            .gridCellColumns(2)
                        Button("Enter") { calc.enter() }
                            .gridCellColumns(2)
                    }
                }

                
            }
            // Stack tonen
            Button("Show Stack") {
                calc.showStack()
            }
            .padding()
            
        }
    }
}

#Preview {
    CalculatorView()
}
