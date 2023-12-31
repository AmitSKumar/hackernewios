//
//  ContentView.swift
//  H4XOR News
//
//  Created by user243065 on 9/7/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationView{
            
            List(networkManager.posts){ post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
               
            }
            .navigationBarTitle("H4XOR News")
        }
        .onAppear {
            self.networkManager.fethData()
        }
    }
      
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


