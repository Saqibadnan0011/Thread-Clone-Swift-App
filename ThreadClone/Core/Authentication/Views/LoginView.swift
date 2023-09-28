//
//  LoginView.swift
//  ThreadClone
//
//  Created by apple on 15/08/2023.
//

import SwiftUI

struct LoginView: View {
    
    @State var viewModel = LoginViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.black
                    .ignoresSafeArea(.all)
                VStack {
                    Spacer()
                    Image("thread-app-icon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 130, height: 130)
                        .padding(.vertical, 30)
                        .background(.black)
                    
                    VStack {
                        TextField("Enter your email", text: $viewModel.email)
                            .autocapitalization(.none)
                            .modifier(ThreadsTextFieldModifier())
                        
                        SecureField("Enter your password", text: $viewModel.password)
                            .modifier(ThreadsTextFieldModifier())

                    }
                    NavigationLink {
                        Text("Forget password")
                    } label: {
                        Text("Forgot Password?")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .padding(.vertical)
                            .padding(.trailing, 30)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    
                    Button {
                        Task { try await viewModel.login() }
                    } label: {
                        Text("Login")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .frame(width: 330, height: 62)
                            .background(LinearGradient(gradient: Gradient(colors: [.red, .orange]), startPoint: .leading, endPoint: .trailing))
                            .cornerRadius(10)
                    }
                    Spacer()
                    Divider()
                    
                    NavigationLink {
                        RegistrationView()
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        HStack(spacing: 3) {
                            Text("Don't have an account?")
                            
                            Text("Sign Up")
                                .fontWeight(.semibold)
                        }
                        .font(.footnote)
                        .foregroundColor(.white)
                    }
                    .padding(.vertical, 17)
                }
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
