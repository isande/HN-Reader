//
//  ContentView.swift
//  HN Reader
//
//  Created by Peggy Wollenhaupt on 7/16/20.
//  Copyright © 2020 Peggy Wollenhaupt. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(posts) { post in
                Text(post.title)
            }
        .navigationBarTitle("Hacker News Reader")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

