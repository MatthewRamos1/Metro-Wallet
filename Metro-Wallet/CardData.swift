//
//  CardData.swift
//  Metro-Wallet
//
//  Created by Matthew Ramos on 11/30/19.
//  Copyright © 2019 Matthew Ramos. All rights reserved.
//

import Foundation

enum CardType {
    case regular
    case reducedFare
    case student
    case sevenDay
    case thirtyDay
}

class MetroCard {
    var name: String
    var cardType: CardType
    var balance: Double?
    var expiration: Date
    var decrementValue: Double?
    var unlimitedExpiration: Date?
    var numberOfRides: Int?
    
    init(name: String, cardType: CardType, balance: Double?, expiration: Date, decrementValue: Double?, unlimitedExpiration: Date?, numberOfRides: Int?) {
        self.name = name
        self.cardType = cardType
        self.balance = balance
        self.expiration = expiration
        self.decrementValue = decrementValue
        self.unlimitedExpiration = unlimitedExpiration
        self.numberOfRides = numberOfRides
    }
    
    static let balanceCards = [
        MetroCard(name: "Regular", cardType: CardType.regular, balance: 0 , expiration: Date(), decrementValue: 2.75, unlimitedExpiration: nil, numberOfRides: nil),
        MetroCard(name: "ReducedFare", cardType: CardType.reducedFare, balance: 0, expiration: Date(), decrementValue: 1.35, unlimitedExpiration: nil, numberOfRides: nil),
        MetroCard(name: "Student", cardType: CardType.student, balance: nil, expiration: Date(), decrementValue: nil, unlimitedExpiration: nil, numberOfRides: 3),
        MetroCard(name: "SevenDay", cardType: CardType.sevenDay, balance: nil, expiration: Date(), decrementValue: nil, unlimitedExpiration: addSevenDays(), numberOfRides: nil),
        MetroCard(name: "ThirtyDay", cardType: CardType.thirtyDay, balance: nil, expiration: Date(), decrementValue: nil, unlimitedExpiration: addThirtyDays(), numberOfRides: nil)
    ]
    
    static func addThirtyDays() -> Date? {
            var timeValue = DateComponents()
            timeValue.day = 30
            let thirtyDayExpirationDate = Calendar.current.date(byAdding: timeValue, to: Date())
            return thirtyDayExpirationDate
        }
    
        static func addSevenDays() -> Date? {
            var timeValue = DateComponents()
            timeValue.day = 7
            let sevenDayExpirationDate = Calendar.current.date(byAdding: timeValue, to: Date())
            return sevenDayExpirationDate
        }
    
}
