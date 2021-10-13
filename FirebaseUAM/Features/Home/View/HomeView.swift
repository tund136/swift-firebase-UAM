//
//  HomeView.swift
//  FirebaseUAM
//
//  Created by Danh Tu on 13/10/2021.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 16) {
                VStack(alignment: .leading, spacing: 16) {
                    Text("First Name: <Placeholder>")
                    Text("Last Name: <Placeholder>")
                    Text("Occupation: <Placeholder>")
                }
                
                ButtonView(title: "Logout", handler: {
                    // TODO: Handle logout action
                })
            }
        }
        .padding(.horizontal)
        .navigationTitle("Home View")
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
