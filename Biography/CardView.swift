//
//  CardView.swift
//  Biography
//
//  Created by Adilet Berdibekov on 21.12.2021.
//

import SwiftUI

struct CardView: View {
    
    let person: Person
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottom) {
                Image(person.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
                Text(person.shortDescription)
                    .font(.body)
                    .lineSpacing(5)
                    .lineLimit(4)
                    .padding()
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.size.width * 0.75)
                    .background(.black.opacity(0.5))
            }
            .frame(width: UIScreen.main.bounds.size.width * 0.75, height: UIScreen.main.bounds.size.height * 0.6)
                .cornerRadius(16)
                .shadow(radius: 4)
            
            Text(person.name)
                .font(.system(size: 30, weight: .medium))
                .foregroundColor(.black)
        }
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(person: Person.stubbed[0])
    }
}
