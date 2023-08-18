//
//  ContentView.swift
//  swift-react-roadmap-swiftUI
//
//  Created by maksims.laitans on 14/08/2023.
//

import SwiftUI

struct LoginView: View {
    @State private var data: LoginValidation
    
    init(data: LoginValidation = LoginValidation()) {
        self.data = data
    }
    
    var body: some View {
        NavigationView {
            NavigationStack {
                ZStack{
                    Image("Accenture_Background")
                        .resizable()
                        .edgesIgnoringSafeArea(.all)
                    VStack {
                        Spacer()
                        
                        VStack {
                            VStack(alignment: .leading, spacing: .zero) {
                                Text("Name")
                                TextField("Enter your name", text: $data.name)
                                    .customField()
                            }
                            VStack(alignment: .leading, spacing: .zero) {
                                Text("Code")
                                TextField("Enter your code", value: $data.code, format: .number)
                                    .customField()
                            }
                            VStack(alignment: .leading, spacing: .zero) {
                                Text("Password")
                                TextField("Enter your password", text: $data.pass)
                                    .customField()
                            }
                            VStack(alignment: .leading, spacing: .zero) {
                                Text("Repeat Password")
                                TextField("Repeat your password", text: $data.repeatPass)
                                    .customField()
                            }
                        }
                        
                        Spacer()
                        
                        Button(action: {} ) {
                            NavigationLink {
                                SuccessView(name: data.name)
                            } label: {
                                Text("Login")
                                    
                            }
                            .controlSize(.large)
                            .buttonStyle(.borderedProminent)
                            
                        }
                        .disabled(!data.isValid)
                        .foregroundColor(!data.isValid ? .gray : .white)
                        .opacity(!data.isValid ? 0.75 : 1)
                        
                        Spacer()
                    }
                    .padding()
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
