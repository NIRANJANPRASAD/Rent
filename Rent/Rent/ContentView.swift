//
//  ContentView.swift
//  Rent
//
//  Created by Niranjan on 04/05/21.
//

import SwiftUI

struct ContentView: View {
    @State private var phoneNumber: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Button.init(action: {
                        print("Cancel button pressed")
                    }, label: {
                        Image(systemName: "xmark")
                            .foregroundColor(Color.black)
                    })
                    .padding()
                    Text("Continue with Phone")
                        .frame(maxWidth: .infinity, alignment: .center)
                        .offset(x: -30, y: 0)
                    
                }
                Spacer()
                TextField("Enter your phone number", text: $phoneNumber)
                    
                    .keyboardType(.decimalPad)
                    .padding(10.0)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.neuBackground)
                    )
                    .shadow(color: .dropShadow, radius: 15, x: 10, y: 10)
                    .shadow(color: .dropLight, radius: 15, x: -10, y: -10)
                    .foregroundColor(.primary)
                    .padding(15)
                NavigationLink(destination: OtpView()) {
                    HStack {
                            Button("Submit") {
                                UIApplication.shared.endEditing() // Call to dismiss keyboard
                            }
                            .disabled(true)
                            Image(systemName: "arrow.right")
                        }
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.neuBackground)
                    )
                    .shadow(color: .dropShadow, radius: 15, x: 10, y: 10)
                    .shadow(color: .dropLight, radius: 15, x: -10, y: -10)
                    .foregroundColor(.blue)
                    .padding(30)
                }
                Spacer()
                
            }
            .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
