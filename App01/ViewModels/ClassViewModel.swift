//
//  ClassViewModel.swift
//  App01
//
//  Created by Alumno on 22/09/23.
//

import SwiftUI

class ClassViewModel: ObservableObject {
    
    @Published var classArray = [ResultsModel]()
    
    func getClassData() async throws {
        // TODO
    }
}

