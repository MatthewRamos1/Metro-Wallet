//
//  CardData.swift
//  Metro-Wallet
//
//  Created by Matthew Ramos on 11/30/19.
//  Copyright © 2019 Matthew Ramos. All rights reserved.
//

import Foundation

protocol CardData {
    var name: String { get set }
    var expiration: Date { get set } //check if get or get set is more applicable
    var cardType: CardType { get set }
}

enum CardType {
    case regular
    case reducedFare
    case student
    case sevenDay
    case thirtyDay
}

class BalanceCardData: CardData {
    var name: String
    var cardType: CardType
    var balance: Double
    var expiration: Date
    var decrementValue: Double
    
    init(name: String, cardType: CardType, balance: Double, expiration: Date, decrementValue: Double) {
        self.name = name
        self.cardType = cardType
        self.balance = balance
        self.expiration = expiration
        self.decrementValue = decrementValue
    }
    
    static let balanceCards = [
        BalanceCardData(name: String(), cardType: CardType.regular, balance: Double() , expiration: Date(), decrementValue: 2.75),
        BalanceCardData(name: String(), cardType: CardType.reducedFare, balance: Double(), expiration: Date(), decrementValue: 1.35)
    ]
    
    
}

class UnlimitedCardData: CardData {
    var name: String
    var expiration: Date
    var unlimitedExpiration: Date
    var cardType: CardType
    var numberOfRides: Double
    
    init(name: String, cardType: CardType, expiration: Date, unlimitedExpiration: Date, numberOfRides: Double) {
        self.name = name
        self.cardType = cardType
        self.unlimitedExpiration = unlimitedExpiration
        self.expiration = expiration
        self.numberOfRides = numberOfRides
    }
    
    static let unlimitedCards = [
        UnlimitedCardData(name: String(), cardType: CardType.student, expiration: Date(), unlimitedExpiration: Date(), numberOfRides: 3),
        UnlimitedCardData(name: String(), cardType: CardType.sevenDay, expiration: Date(), unlimitedExpiration: Date(), numberOfRides: Double.infinity),
        UnlimitedCardData(name: String(), cardType: CardType.thirtyDay, expiration: Date(), unlimitedExpiration: Date(), numberOfRides: Double.infinity)
    ]
    
    
}

