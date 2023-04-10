//
//  ContentView.swift
//  ScrollViewSwiftUI
//
//  Created by sss on 10.04.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            
            headerView
            
            VStack {
                ScrollView(.vertical, showsIndicators: false) {
                    
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack{
                            ForEach(1..<3, id: \.self) { _ in
                                cardView
                            }
                        }
                    }
                    
                    ForEach(1..<10, id: \.self) { _ in
                        paymentView
                    }
                    
                    Spacer()
                        .frame(height: 150)
                }
            }
            .background(.white)
            .cornerRadius(20)
            .offset(y: 20)
        }
        .background(.black)
        .ignoresSafeArea(.all, edges: .bottom)
    }
    
    var headerView: some View {
        HStack {
            Text("My cards")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            Spacer()
            
            Image(systemName: "globe")
                .font(.title)
                .foregroundColor(.white)
                .frame(width: 20, height: 20, alignment: .topTrailing)
            
        }.padding()
    }
    
    var cardView: some View {
        ZStack(alignment: .top) {
            RoundedRectangle(cornerRadius: 20)
                .fill(
                    LinearGradient(colors: [Color.black.opacity(0.9), Color.black], startPoint: .top, endPoint: .bottom)
                )
                .frame(width: UIScreen.main.bounds.width - 40, height: 210)
            
            cardItemView
        }
        .padding()
    }
    
    var cardItemView: some View {
        
        VStack(alignment: .leading) {
            
            Text("Good men bank")
                .foregroundColor(.white)
                .font(.title)
                .fontWeight(.bold)
            
            HStack {
                ForEach(1...5, id: \.self) { _ in
                    Circle()
                        .fill(.white)
                        .frame(width: 6, height: 6, alignment: .bottom)
                }
                Text("5757575757575")
                    .foregroundColor(.white)
                    .font(.headline)
                    .fontWeight(.bold)
                
                Spacer()
                Text("VISA")
                    .foregroundColor(.white)
                    .font(.headline)
                    .fontWeight(.bold)
            }
            .frame(height: 110, alignment: .bottom)
        }
        .padding()
    }
    
    var paymentView: some View {
        
        HStack(alignment: .firstTextBaseline) {
            Text("VISA")
                .font(.headline)
                .fontWeight(.bold)
                .padding(.trailing, 5)
            
            VStack(alignment: .leading) {
                Text("Apple")
                    .font(.headline)
                    .fontWeight(.bold)
                
                Text("30.03.2022")
                    .foregroundColor(.gray)
                    .font(.caption)
                    .fontWeight(.light)
            }
            Spacer()
            Text("+100$")
                .font(.headline)
                .fontWeight(.bold)
                .padding(.trailing, 5)
                .foregroundColor(.green)
        }
        .padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
