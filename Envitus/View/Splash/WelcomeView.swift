//
//  WelcomeView.swift
//  Envitus
//
//  Created by Dilshad P on 20/01/25.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack{//ZStack-1

            VStack{//VStack-1
                
                Image("Logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 240,height: 327)
                
                
                PrimaryButton(title:"Get Started",onPressed: {
                    
                })
                .padding(.top,100)
                
                
                HStack(spacing:0){//HStack-1
                    
                    Text("Already have an account?")
                        .font(.system(size: 14))
                        .fontWeight(.regular)
                        .frame(width: 183,height: 21)
                        .foregroundStyle(Color.white)
                    
                    
                    Button{
                        
                    }label: {
                        Text("Sign In")
                            .font(.system(size: 14))
                            .fontWeight(.bold)
                            .frame(width: 51,height: 21)
                            .foregroundStyle(Color(hex: "#8AD80F"))
                    }
                    
                }//HStack-1
                .padding(.top,25)
                
            }//VStack-1
            
        }//ZStack-1
        .ignoresSafeArea()
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(Color(hex: "##151414"))
    }
}

#Preview {
    WelcomeView()
}
