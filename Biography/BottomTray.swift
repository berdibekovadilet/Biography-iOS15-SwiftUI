//
//  BottomTray.swift
//  Biography
//
//  Created by Adilet Berdibekov on 21.12.2021.
//

import SwiftUI

struct BottomTray: View {
    
    let selectedPerson: Person?
    var isScrollDisabled = true
    
    var body: some View {
        ZStack {
            if self.selectedPerson != nil {
                VStack {
                    Rectangle().fill(Color.gray.opacity(0.4))
                        .frame(width: 40, height: 4)
                        .cornerRadius(4)
                    
                    Text(self.selectedPerson?.name ?? "")
                        .font(.system(size: 30, weight: .semibold))
                        .padding(.vertical)
                    
                    Divider()
                    
                    ScrollView(showsIndicators: false) {
                        Text(self.selectedPerson?.description ?? "")
                            .padding()
                    }
                    .disabled(self.isScrollDisabled)
                }
            }
        }
        .multilineTextAlignment(.leading)
        .background(Color.white)
        .foregroundColor(.black)
    }
}

struct BottomTray_Previews: PreviewProvider {
    static var previews: some View {
        BottomTray(selectedPerson: Person.stubbed[0])
    }
}
