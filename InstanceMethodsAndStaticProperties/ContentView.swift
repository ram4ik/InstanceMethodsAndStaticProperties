//
//  ContentView.swift
//  InstanceMethodsAndStaticProperties
//
//  Created by ramil on 17.02.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button(action: {
                let myScore = Score()
                print(myScore.current)
                myScore.current = myScore.increment(myScore.current)
                print(myScore.current)
                myScore.current = myScore.increment(myScore.current, value: 5)
                print(myScore.current)
                
            }) {
                Text("Increment")
            }
            
            Button(action: {
                let scoreIt = Score()
                scoreIt.incrementIt()
                print(scoreIt.current)
                scoreIt.incrementIt(5)
                print(scoreIt.current)
            }) {
                Text("Increment it")
            }
            
            Button(action: {
                var scoreStruct = ScoreStruct()
                scoreStruct.increment()
                scoreStruct.increment(5)
                // private(set)
                print(scoreStruct.current)
            }) {
                Text("Increment from struct")
            }
            
            Button(action: {
                var scoreOne = ScoreStatic()
                var scoreTwo = ScoreStatic()
                
                scoreOne.increment(10)
                print(ScoreStatic.highestScore)
                
                scoreTwo.increment(6)
                print(ScoreStatic.highestScore)
                scoreTwo.increment(6)
                print(ScoreStatic.highestScore)
            }) {
                Text("Static score")
            }
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
