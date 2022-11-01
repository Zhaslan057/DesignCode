//
//  FeaturedItem.swift
//  DesignCode
//
//  Created by Жаслан Танербергенов on 18.10.2022.
//

import SwiftUI

struct FeaturedItem: View {
    var course: Course = courses[0]
    @Environment(\.sizeCategory) var sizeCategory
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8.0) {
            Spacer()
            Image(course.logo)
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode:   .fit)
                .frame(width: 26, height: 26)
                .cornerRadius(10)
                .padding(9)
                .background(Color(UIColor.systemBackground).opacity(0.1), in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                .strokeStyle(cornerRadius: 16)
            Text(course.title)
                .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.linearGradient(colors: [.primary, .primary.opacity(0.5)], startPoint: .topLeading, endPoint: .bottomTrailing))
                    .lineLimit(1)
                    .dynamicTypeSize(.large)
            Text(course.subtitle.uppercased())
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundColor(.secondary)
            Text(course.text)
                .font(.footnote)
                .multilineTextAlignment(.leading)
                .lineLimit(sizeCategory > .large ? 1 : 2)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(.secondary)
            }
        .padding(.all, 20.0)
        .padding(.vertical, 20.0)
        .frame(height: 350.0)
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 30, style: .continuous))
        .strokeStyle()
        .padding(.horizontal, 20)
        

    }
}

struct FeaturedItem_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItem()
    }
}
