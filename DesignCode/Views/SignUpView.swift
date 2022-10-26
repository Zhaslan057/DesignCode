//
//  SignUpView.swift
//  DesignCode
//
//  Created by Жаслан Танербергенов on 21.10.2022.
//

import SwiftUI

struct SignUpView: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 16) {
            Text("Sign up")
                .font(.largeTitle).bold()
            Text("Войдите в супер-пупер красивое приложение или оно войдет в вас")
                .font(.headline)
            Button {} label: {
                Text("Create account")
                    .frame(maxWidth: .infinity)
            }
            .font(.headline)
            .blendMode(.overlay)
            .buttonStyle(.angular)
            .tint(.accentColor)
            .controlSize(.regular)
            Text("By clicking on __Create account__, you agree to our **Terms of service** and **[Privacy policy](http://policy.com)**.")
                .font(.footnote)
                .foregroundColor(.secondary)
                .accentColor(.secondary)
            HStack {
                Text("Already have an account?")
                Button {} label: {
                    
                }
            }
        }
        .padding(20)
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 30, style: .continuous))
        .strokeStyle(cornerRadius: 30)
        .shadow(color: Color("Shadow").opacity(0.2), radius: 30, x: 0, y: 30)
        .padding(20)
        .background(
            Image("Blob 1").offset(x: 200, y: -100)
        )
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
