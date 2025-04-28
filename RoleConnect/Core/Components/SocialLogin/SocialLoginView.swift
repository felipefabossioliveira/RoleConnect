//
//  SocialLoginView.swift
//  ciaitiai
//
//  Created by Felipe Fabossi on 29/03/25.
//

import SwiftUI

struct SocialLoginView: View {
    var body: some View {
        
        VStack {
            
            Header
            
            SocialLoginButtons
            
            Spacer()
            
            OrLoginWith
            
            Spacer()
            
            EmailAndPasswordButton
            
            CreateAccount
            
            Spacer()
            
        }
        .padding()
        .preferredColorScheme(.dark)
    }
}


extension SocialLoginView {
    
    private var CreateAccount: some View {
        HStack {
            Text("New to CI&T?")
                .font(.title3)
                .padding(.top, 18)
                .foregroundStyle(.white)
            
            Text("Create Account")
                .font(.title3)
                .fontWeight(.bold)
                .padding(.top, 18)
                .foregroundStyle(Color("redlogo"))
            
        }
    }
    
    private var EmailAndPasswordButton: some View {
        RoundedRectangle(cornerRadius: 15)
            .stroke(Color.white.opacity(0.7))
            .frame(width: .infinity, height: 50)
            .background(.white)
            .overlay {
                HStack {
                    Image(systemName: "envelope.badge")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                        .foregroundStyle(.black.opacity(0.8))
                    
                    HStack(spacing: 15) {
                        Text("Email & Password")
                            .font(.callout)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color("royalBlue"))
                        
                        Image(systemName: "arrow.right")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                            .foregroundStyle(.black.opacity(0.8))
                    }
                    
                }
            }
            .cornerRadius(15)
    }
    
    private var OrLoginWith: some View {
        HStack {
            Rectangle()
                .stroke()
                .frame(width: .infinity / 3, height: 1)
                .foregroundStyle(.gray.opacity(0.4))
            
            Text("or Log in with")
                .font(.headline)
                .foregroundStyle(.white.opacity(0.65))
            
            Rectangle()
                .stroke()
                .frame(width: .infinity / 3, height: 1)
                .foregroundStyle(.gray.opacity(0.4))
        }
    }
    
    private var Header: some View{
        VStack {
            Image("logo")
                .resizable()
                .foregroundStyle(Color("redlogo"))
                .scaledToFit()
                .frame(width: 240, height: 230)
            
            Text("Let's you in")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundStyle(.white)
                .offset(y: -40)
        }
    }
    
    private var SocialLoginButtons: some View {
        VStack(spacing: 16) {
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color.white.opacity(0.7))
                .frame(width: .infinity, height: 50)
                .background(.white)
                .overlay {
                    HStack {
                        Image(systemName: "lock.shield")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                            .foregroundStyle(.black.opacity(0.8))
                        
                        Text("Continue with SSO")
                            .font(.callout)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color("royalBlue"))
                        
                    }
                }
                .cornerRadius(15)
            
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color.white.opacity(0.7))
                .frame(width: .infinity, height: 50)
                .background(.white)
                .overlay {
                    
                    HStack {
                        Image("google")
                            .resizable()
                            .frame(width: 25, height: 25)
                        
                        Text("Continue with Google")
                            .font(.callout)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color("royalBlue"))
                        
                        
                    }
                }
                .cornerRadius(15)
        }
    }
    
}

struct SocialLoginView_Previews: PreviewProvider {
    static var previews: some View {
        SocialLoginView()
    }
}
