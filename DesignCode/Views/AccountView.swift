//
//  AccountView.swift
//  DesignCode
//
//  Created by Жаслан Танербергенов on 12.10.2022.
//

import SwiftUI

struct AccountView: View {
    @State var isDeleted = false
    @State var isPinned = false
    @Environment(\.dismiss) var dismiss
    @AppStorage("isLogged") var isLogged = false
    
    var body: some View {
        NavigationView {
            List {
                profile
                
                menu
                
                links
                    .colorMultiply(.primary)
                    .listRowSeparatorTint(.blue)
                    .listRowSeparator(.hidden)
                Button {
                    isLogged = false
                    dismiss()
                } label: {
                    Text("Sign out")
                }
                .tint(.red)
                
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Account")
            .navigationBarItems(trailing: Button {
                dismiss()
            }label: {
                Text("Done").bold() })
        }
    }
    var profile: some View {
        VStack (spacing: 8){
            Image(systemName: "person.crop.circle.badge.checkmark")
                .symbolVariant(.circle.fill)
                .font(.system(size: 32))
                .symbolRenderingMode(.palette)
                .foregroundStyle(.blue, .blue.opacity(0.3))
                .padding()
                .background(Circle().fill(.ultraThinMaterial))
                .background(
                    HexagonView()
                        .offset(x: -50, y : -100)
                )
                .background(
                    BlobView()
                        .offset(x: 250, y: -20)
                        .scaleEffect(0.7)
                )
            Text("Zhaslan Tanerbergenov")
                .font(.title.weight(.semibold))
            HStack {
                Image(systemName: "location")
                    .imageScale(.large)
                Text("Kazakhstan")
                    .foregroundColor(.secondary)
            }
        }
        .frame(maxWidth: .infinity)
        .padding()
    }
    var menu : some View {
        Section {
            NavigationLink(destination: HomeView()) {
                Label("Settings", systemImage: "gear")
            }
            NavigationLink {HomeView()} label: {
                Label("Billing", systemImage: "creditcard")
            }
            NavigationLink {HomeView()} label : {
                Label("Help", systemImage: "questionmark")
                    .imageScale(.small)
            }
        }
        .colorMultiply(.primary)
    }
    var links : some View {
        Section {
            if !isDeleted {
                Link(destination: URL(string: "https://apple.com")!) {
                    HStack {
                        Label("Website", systemImage : "house")
                        Spacer()
                        Image(systemName: "link")
                            .foregroundColor(.secondary)
                    }
                }
                .swipeActions(edge: .leading, allowsFullSwipe: true) {
                    Button(action: { isDeleted = true}) {
                        Label("Delete", systemImage: "trash")
                    }
                    .tint(.red)
                    pinButton
                }
            }
            
            Link(destination: URL(string: "https://youtube.com")!) {
                HStack {
                    Label("YouTube", systemImage : "tv")
                    Spacer()
                    Image(systemName: "link")
                        .foregroundColor(.secondary)
                }
            }
                .swipeActions {
                    pinButton
                }
            
            .colorMultiply(.primary)
            .listRowSeparator(.hidden)
        }

    }
    var pinButton: some View {
        Button {isPinned.toggle()} label: {
            if isPinned {
                Label("Unpin", systemImage: "pin.slash")
            } else {
                Label("Pin", systemImage: "pin")
            }
        }
        .tint(isPinned ? .gray : .yellow)
    }
    struct AccountView_Previews: PreviewProvider {
        static var previews: some View {
            AccountView()
        }
    }
}
