//
//  Profile.swift
//  ciaitiai
//
//  Created by Felipe Fabossi on 04/04/25.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        GeometryReader { geo in
            VStack(spacing: 20) {
                headerView
                
                myDetailsView
                    .frame(width: geo.size.width / 1.05)
                
                preferencesView
                    .frame(width: geo.size.width / 1.05)
            }
        }
    }
    
    @ViewBuilder
    private var headerView: some View {
        ZStack {
            VStack (spacing: 20) {
                HStack {
                    Circle()
                        .fill(Color("darkGray"))
                        .frame(width: 50, height: 50)
                        .overlay {
                            Image(systemName: "person.circle")
                                .resizable()
                                .scaledToFit()
                                .foregroundStyle(.white)
                                .frame(width: 20, height: 20)
                        }
                    
                    Spacer()
                    
                    Text("My Profile")
                        .fontWeight(.semibold)
                    
                    Spacer()
                    
                    Circle()
                        .fill(Color("darkGray"))
                        .frame(width: 50, height: 50)
                        .overlay {
                            Image(systemName: "square.and.pencil")
                                .resizable()
                                .scaledToFit()
                                .foregroundStyle(.white)
                                .frame(width: 18, height: 18)
                                .fontWeight(.bold)
                                .offset(x: 1)
                        }
                    
                }
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color("darkGray"))
                    .frame(height: 90)
                    .overlay {
                        HStack {
                            Circle()
                                .frame(width: 50, height: 50)
                                .overlay {
                                    Image("profile")
                                        .resizable()
                                        .scaledToFill()
                                        .clipShape(Circle())
                                        .frame(width: 45, height: 45)
                                }
                            
                            VStack(alignment: .leading) {
                                Text("Felipe Fabossi")
                                    .font(.headline)
                                    .foregroundStyle(.white)
                                
                                Text(verbatim: "ffabossi@ciandt.com")
                                    .foregroundStyle(.white.opacity(0.7))
                                    .font(.subheadline)
                                
                            }
                            
                            Spacer()
                            
                            Image(systemName: "rectangle.portrait.and.arrow.forward")
                                .rotationEffect(Angle(degrees: 180))
                                .fontWeight(.bold)
                            
                        }
                        .padding(.horizontal)
                    }
                
                Spacer()
            }
            .padding(.top, 60)
            .padding(.horizontal)
            
        }
        .ignoresSafeArea(edges: .all)
        .frame(height: 200)
        .background(Color("dark"))
    }
    
    @ViewBuilder
    private var myDetailsView: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(Color("dark"))
            .frame(height: 270)
            .overlay {
                VStack (alignment: .leading) {
                    
                    Text("My Details")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .padding(.horizontal)
                        .padding(.bottom, 8)
                    
                    RoundedRectangle(cornerRadius: 0)
                        .fill(.gray.opacity(0.3))
                        .frame(height: 1)
                        .padding(.bottom, 13)
                    
                    
                    HStack(alignment: .center, spacing: 0) {
                        Circle()
                            .fill(Color("darkGray"))
                            .frame(width: 50, height: 50)
                            .overlay {
                                Image(systemName: "ticket")
                                    .resizable()
                                    .scaledToFit()
                                    .foregroundStyle(.white)
                                    .frame(width: 20, height: 20)
                            }
                            .padding(.horizontal)
                        
                        
                        
                        Text("Check-in's")
                        
                        Spacer()
                        
                        Image(systemName: "chevron.right")
                            .resizable()
                            .scaledToFit()
                            .foregroundStyle(.gray.opacity(0.7))
                            .frame(width: 15, height: 15)
                            .padding(.trailing)
                    }
                    
                    HStack(alignment: .center, spacing: 0) {
                        Circle()
                            .fill(Color("darkGray"))
                            .frame(width: 50, height: 50)
                            .overlay {
                                Image(systemName: "info.circle")
                                    .resizable()
                                    .scaledToFit()
                                    .foregroundStyle(.white)
                                    .frame(width: 20, height: 20)
                            }
                            .padding(.horizontal)
                        
                        
                        
                        Text("Personal information")
                        
                        Spacer()
                        
                        Image(systemName: "chevron.right")
                            .resizable()
                            .scaledToFit()
                            .foregroundStyle(.gray.opacity(0.7))
                            .frame(width: 15, height: 15)
                            .padding(.trailing)
                    }
                    
                    HStack(alignment: .center, spacing: 0) {
                        Circle()
                            .fill(Color("darkGray"))
                            .frame(width: 50, height: 50)
                            .overlay {
                                Image(systemName: "person.3.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .foregroundStyle(.white)
                                    .frame(width: 23, height: 20)
                            }
                            .padding(.horizontal)
                        
                        
                        
                        Text("Passengers")
                        
                        Spacer()
                        
                        Image(systemName: "chevron.right")
                            .resizable()
                            .scaledToFit()
                            .foregroundStyle(.gray.opacity(0.7))
                            .frame(width: 15, height: 15)
                            .padding(.trailing)
                    }
                }
                
            }
    }
    
    @ViewBuilder
    private var preferencesView: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(Color("dark"))
            .frame(height: 220)
            .overlay {
                VStack (alignment: .leading) {
                    
                    Text("Preferences")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .padding(.horizontal)
                        .padding(.bottom, 8)
                    
                    RoundedRectangle(cornerRadius: 0)
                        .fill(.gray.opacity(0.3))
                        .frame(height: 1)
                        .padding(.bottom, 13)
                    
                    
                    HStack(alignment: .center, spacing: 0) {
                        
                        Circle()
                            .fill(Color("darkGray"))
                            .frame(width: 50, height: 50)
                            .overlay {
                                Text("🇧🇷")
                            }
                            .padding(.horizontal)
                        
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Location")
                            
                            Text("Brazil")
                                .fontWeight(.semibold)
                                .foregroundStyle(.gray.opacity(0.8))
                        }
                        Spacer()
                        
                        Image(systemName: "chevron.right")
                            .resizable()
                            .scaledToFit()
                            .foregroundStyle(.gray.opacity(0.7))
                            .frame(width: 15, height: 15)
                            .padding(.trailing)
                    }
                    
                    HStack(alignment: .center, spacing: 0) {
                        Circle()
                            .fill(Color("darkGray"))
                            .frame(width: 50, height: 50)
                            .overlay {
                                Image("translate")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 20, height: 20)
                            }
                            .padding(.horizontal)
                        
                        
                        VStack (alignment: .leading, spacing: 4) {
                            Text("Language")
                            
                            Text("English")
                                .fontWeight(.semibold)
                                .foregroundStyle(.gray.opacity(0.8))
                        }
                        
                        Spacer()
                        
                        Image(systemName: "chevron.right")
                            .resizable()
                            .scaledToFit()
                            .foregroundStyle(.gray.opacity(0.7))
                            .frame(width: 15, height: 15)
                            .padding(.trailing)
                    }
                }
            }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
            .preferredColorScheme(.dark)
    }
}
