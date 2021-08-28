//
//  CatFactView.swift
//  Cat Facts App
//
//  Created by YJ Soon on 28/8/21.
//

import SwiftUI

struct CatFactView: View {
    
    @ObservedObject var catFactManager = CatFactManager()
    
    var body: some View {
        VStack {
            if let catFact = catFactManager.catFact {
                Text(catFact.fact)
                    .padding()
            }
        }
        .onAppear {
            catFactManager.getCatFact()
        }
    }
}

struct CatFactView_Previews: PreviewProvider {
    static var previews: some View {
        CatFactView()
    }
}
