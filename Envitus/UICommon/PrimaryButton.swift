//
//  PrimaryButton.swift
//  Envitus
//
//  Created by Dilshad P on 20/01/25.
//

import SwiftUI

struct PrimaryButton: View {
    
    @State  var title:String = "Title"
    var onPressed : (()->())?
    
    var body: some View {
        Button{
            onPressed?()
        }label: {
            ZStack{//ZStack-1
                
                Image("Primary_btn")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 350,height: 50)
                
                Text(title)
                    .font(.system(size: 17))
                    .fontWeight(.semibold)
                    .frame(width: 101,height: 26)
                
            }//ZStack-1
        }.foregroundStyle(Color.white)
    }
}

#Preview {
    PrimaryButton()
}
