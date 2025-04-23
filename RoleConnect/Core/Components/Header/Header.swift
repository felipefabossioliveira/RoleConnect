
import SwiftUI

struct Header: View {
    
    @StateObject private var homeVM = HomeViewModel()
    
    @Binding var isMenuOpen: Bool
    
    @EnvironmentObject private var coordinator: AppCoordinator
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.top)
            
            VStack(alignment: .leading, spacing: 20) {
    
                    menuAndProfile
                
                VStack(alignment: .leading, spacing: 20) {
                    
                    Text("Hey Felipe 👋🏻,")
                        .foregroundStyle(.gray)
                        .font(.title3)
                        .fontWeight(.semibold)
                    
                    Text("Find the amazing events made \nspecially for you.")
                        .foregroundStyle(.white)
                        .font(.title3)
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    SearchBar(searchText: $homeVM.searchText)
                    
                }
                .frame(maxWidth: .infinity)
                .padding(.horizontal)
            }
            
        }
        .frame(maxHeight: 270)
    }
    
    private var menuAndProfile: some View {
        
        HStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(.clear)
                .overlay(alignment: .center) {
                    Image(systemName: "square.grid.2x2.fill")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundStyle(.white)
                }
                .frame(width: 45, height: 45)
                .onTapGesture {
                    isMenuOpen.toggle()
                }
            
            Spacer()
            
            HStack(alignment: .lastTextBaseline, spacing: 0) {
                
                Circle()
                    .frame(height: 45)
                    .overlay {
                        Image("profile3")
                            .resizable()
                            .scaledToFill()
                            .clipShape(Circle())
                    }
                    .padding(.trailing)
                
                Circle()
                    .frame(width: 11, height: 11)
                    .offset(x: -30)
                    .foregroundStyle(.white)
                    .overlay {
                        Circle()
                            .frame(width: 9, height: 9)
                            .foregroundStyle(.greenStatus)
                            .offset(x: -30)
                    }
            }
        }
    }
    
    private var profileButton: some View {
        Circle()
            .fill(.clear)
            .frame(width: 50, height: 50)
            .overlay {
                Image("profile2")
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(.white)
            }
            .onTapGesture {
                coordinator.push(.profile)
            }
    }
}


#Preview {
    Home()
}
