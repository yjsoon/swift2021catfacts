//
//  CatFactManager.swift
//  Cat Facts App
//
//  Created by YJ Soon on 28/8/21.
//

import Foundation
import SwiftUI

class CatFactManager: ObservableObject {
    
    @Published var catFact: CatFact?
    
    func getCatFact() {
        let apiURL = URL(string: "https://catfact.ninja/fact")!
        let request = URLRequest(url: apiURL)
        
        catFact = nil
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                print(String(data: data, encoding: .utf8)!)
                let decoder = JSONDecoder()
                DispatchQueue.main.async {
                    self.catFact = try? decoder.decode(CatFact.self, from: data)
                }
            }
        }.resume()
    }
}
