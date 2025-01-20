//
//  SplashView.swift
//  Envitus
//
//  Created by Dilshad P on 20/01/25.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack(alignment:.center){//ZStack-1
            
            Image("Logo")
                .resizable()
                .scaledToFit()
                .frame(width: 240,height: 327)
            
        }//ZStack-1
        .ignoresSafeArea()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(hex: "##151414"))
        
    }
}

#Preview {
    SplashView()
}
