//
//  ClassDetailsViewModel.swift
//  App01
//
//  Created by Alumno on 22/09/23.
//

import SwiftUI

class ClassDetailsViewModel: ObservableObject {
    
    @Published var classDetails = ClassDetails()
    
    func getClassDetails(searchUrl : String) async throws {
        // TODO
    }
}

