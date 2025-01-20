//
//  EnvitusApp.swift
//  Envitus
//
//  Created by Dilshad P on 20/01/25.
//

import SwiftUI

@main
struct EnvitusApp: App {
    
    @State private var showSplash : Bool = true
    
    var body: some Scene {
        WindowGroup {
            
            if showSplash {
                
                SplashView()
                    .transition(.opacity)
                    .onAppear{
                        DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                            withAnimation{
                                showSplash = false
                            }
                        }
                    }
            }else{
                WelcomeView()
                    .transition(.opacity)
            }
            
        }
    }
}
