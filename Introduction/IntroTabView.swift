//
//  IntroTabView.swift
//  Introduction
//
//  Created by Conqueriings on 26/6/21.
//

import SwiftUI

struct IntroTabView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("Intro", systemImage: "lock.shield.fill")
                }
                .accentColor(.gray)
        }
    }
}

struct IntroTabView_Previews: PreviewProvider {
    static var previews: some View {
        IntroTabView()
    }
}
