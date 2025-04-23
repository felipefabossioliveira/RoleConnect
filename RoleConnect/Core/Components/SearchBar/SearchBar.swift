//
//  SearchBar.swift
//  RoleConnect
//
//  Created by Felipe Fabossi on 15/04/25.
//

import SwiftUI

struct SearchBar: View {
    
    @Binding var searchText: String
    
    var body: some View {
        HStack {
            CustomTextField(
                text: $searchText,
                placeholder: "Search...",
                placeholderColor: .lightPurple,
                keyboardType: .asciiCapable,
                tintColor: .darkPurple,
                foregroundColor: .lightPurple,
                fontWeight: .bold,
                autocorrectionDisabled: true
            )
            .frame(height: 44)
            .overlay(alignment: .trailing) {
                Image(systemName: "xmark.circle.fill")
                    .padding()
                    .foregroundStyle(.white)
                    .offset(x: 10)
                    .opacity(searchText.isEmpty ? 0 : 1)
                    .onTapGesture {
                        searchText = ""
                    }
            }
            
            
            RoundedRectangle(cornerRadius: 10)
                .fill(.white)
                .frame(width: 45, height: 45)
                .overlay {
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 20)
                        .fontWeight(.medium)
                        .foregroundStyle(.greyish.opacity(0.7))
                }
            
        }
        .frame(height: 60)
        .font(.headline)
    }
}

struct CustomTextField: UIViewRepresentable {
    
    @Binding var text: String
    
    let placeholder: String
    let placeholderColor: UIColor
    let keyboardType: UIKeyboardType
    let tintColor: UIColor
    let foregroundColor: UIColor
    let fontWeight: UIFont.Weight
    let autocorrectionDisabled: Bool
    
    func makeUIView(context: Context) -> UITextField {
        let textField = UITextField()
        textField.delegate = context.coordinator
        textField.keyboardType = keyboardType
        textField.tintColor = tintColor
        textField.textColor = foregroundColor
        textField.font = .systemFont(ofSize: 17, weight: fontWeight)
        textField.autocorrectionType = autocorrectionDisabled ? .no : .yes
        
        // Configura o placeholder com cor personalizada
        textField.attributedPlaceholder = NSAttributedString(
            string: placeholder,
            attributes: [.foregroundColor: placeholderColor]
        )
        
        return textField
    }
    
    func updateUIView(_ uiView: UITextField, context: Context) {
        uiView.text = text
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, UITextFieldDelegate {
        var parent: CustomTextField
        
        init(_ parent: CustomTextField) {
            self.parent = parent
        }
        
        @objc func textFieldDidChange(_ textField: UITextField) {
            parent.text = textField.text ?? ""
        }
        
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            textField.resignFirstResponder()
            return true
        }
    }
}

#Preview {
    SearchBar(searchText: .constant(""))
}
