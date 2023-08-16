//
//  SuccessView.swift
//  swift-react-roadmap-swiftUI
//
//  Created by maksims.laitans on 16/08/2023.
//

import SwiftUI

struct SuccessView: View {
    
    @State private var name: String
    @State private var isActive = false
    
    init(name: String = "") {
        self.name = name
    }
    
    var body: some View {
        
        NavigationView {
            ZStack{
                Image("Accenture_Song")
                    .resizable()
                    .scaledToFit()
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Text("Hello \(name)")
                        .font(.largeTitle)
                        .frame(height: (UIScreen.main.bounds.height/2), alignment: .top)
                    Text("You are successfully")
                        .font(.title)
                    Text("logged in")
                        .font(.title)
                }
                .padding()
            }
        }
    }
}





struct SuccessView_Previews: PreviewProvider {
    static var previews: some View {
        SuccessView()
    }
    
    
}
