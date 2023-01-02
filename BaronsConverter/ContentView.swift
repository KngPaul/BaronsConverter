//
//  ContentView.swift
//  BaronsConverter
//
//  Created by Paul Onawola on 01/01/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var converter = Converter()
    @State private var historys = [History]()
    @FocusState private var amountIsFocused: Bool
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    Text(converter.outputAmount, format: .currency(code: converter.outputCurrency.name))
                        .font(.largeTitle)
                        
                }
                
                Picker(selection: $converter.inputCurrency) {
                    ForEach(Currency.allCases) { currency in
                        Text("\(currency.flag) \(currency.name)").tag(currency)
                    }
                } label: {
                    Text("From:")
                }
                
                Picker(selection: $converter.outputCurrency) {
                    ForEach(Currency.allCases) { currency in
                        Text("\(currency.flag) \(currency.name)").tag(currency)
                    }
                } label: {
                    Text("To:")
                }
                
                TextField("Amount", value: $converter.amount, format: .number)
                    .keyboardType(.decimalPad)
                    .focused($amountIsFocused)
                
                Section("History") {
                    List(historys) { history in
                        HStack {
                            Text("\(history.conversion.amount.formatted(.currency(code:history.conversion.inputCurrency.name)))")
                            Spacer()
                            Image(systemName: "arrowshape.forward.fill")
                            Spacer()
                            Text("\(history.conversion.outputAmount.formatted(.currency(code: history.conversion.outputCurrency.name)))")
                        }
                    }
                }
            }
            .navigationTitle("Baron's Converter")
            .onSubmit {
                historys.insert(History(conversion: converter), at: 0)
            }
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    
                    Button("Done") {
                        amountIsFocused = false
                        historys.insert(History(conversion: converter), at: 0)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
