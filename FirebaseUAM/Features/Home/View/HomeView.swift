//
//  HomeView.swift
//  FirebaseUAM
//
//  Created by Danh Tu on 13/10/2021.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var sessionService: SessionServiceImpl
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 16) {
                VStack(alignment: .leading, spacing: 16) {
                    Text("First Name: \(sessionService.userDetails?.firstName ?? "N/A")")
                    Text("Last Name: \(sessionService.userDetails?.lastName ?? "N/A")")
                    Text("Occupation: \(sessionService.userDetails?.occupation ?? "N/A")")
                }
                
                ButtonView(title: "Logout", handler: {
                    // TODO: Handle logout action
                    sessionService.logout()
                })
            }
        }
        .padding(.horizontal)
        .navigationTitle("Home View")
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HomeView()
                .environmentObject(SessionServiceImpl())
        }
    }
}
