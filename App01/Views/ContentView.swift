//
//  ContentView.swift
//  App01
//
//  Created by Alumno on 19/09/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var classList = ClassViewModel()
    
    var body: some View {
        VStack{
            NavigationStack {
                VStack {
                    List(classList.classArray) {
                        classInfo in
                        NavigationLink {
                            ClassDetailsView(searchUrl: classInfo.url)
                        } label: {
                            Text(classInfo.name)
                        }
                    }.task {
                        do {
                            try await classList.getClassData()
                        } catch {
                            print("error")
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
