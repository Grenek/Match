//
//  CardModel.swift
//  Match App
//
//  Created by Вадим on 02.04.2019.
//  Copyright © 2019 Shamratov Vadim. All rights reserved.
//

import Foundation

class CardModel {
    
    func getCards() -> [Card] {
        
        var generatedNumbersArray = [Int]()
        
        var generatedCardsArray = [Card]()
        
        while generatedNumbersArray.count < 8 {
            
            let randomNumber = arc4random_uniform(13) + 1
            
            if generatedNumbersArray.contains(Int(randomNumber)) == false {
                
                generatedNumbersArray.append(Int(randomNumber))
                
                let cardOne = Card()
                cardOne.imageName = "card\(randomNumber)"
                generatedCardsArray.append(cardOne)
                
                let cardTwo = Card()
                cardTwo.imageName = "card\(randomNumber)"
                generatedCardsArray.append(cardTwo)
            }
        }
        
        return generatedCardsArray.shuffled()
        
    }
}
