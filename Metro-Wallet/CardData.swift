//
//  CardData.swift
//  Metro-Wallet
//
//  Created by Matthew Ramos on 11/30/19.
//  Copyright © 2019 Matthew Ramos. All rights reserved.
//

import Foundation

enum CardType {
    case limited
    case unlimited
}

enum CardSubtype {
    case regular
    case reducedFare
    case student
    case sevenDay
    case thirtyDay
}

class MetroCard {
    var name: String
    var cardType: CardType
    var cardSubtype: CardSubtype
    var balance: Double?
    var expiration: Date
    var decrementValue: Double?
    var unlimitedExpiration: Date?
    var numberOfRides: Int?
    
    init(name: String, cardType: CardType, cardSubtype: CardSubtype, balance: Double?, expiration: Date, decrementValue: Double?, unlimitedExpiration: Date?, numberOfRides: Int?) {
        self.name = name
        self.cardType = cardType
        self.cardSubtype = cardSubtype
        self.balance = balance
        self.expiration = expiration
        self.decrementValue = decrementValue
        self.unlimitedExpiration = unlimitedExpiration
        self.numberOfRides = numberOfRides
    }
    
    static var balanceCards = [
        MetroCard(name: "Regular", cardType: CardType.limited, cardSubtype: CardSubtype.regular, balance: 0 , expiration: Date(), decrementValue: 2.75, unlimitedExpiration: nil, numberOfRides: nil),
        MetroCard(name: "ReducedFare", cardType:  CardType.limited,  cardSubtype: CardSubtype.reducedFare, balance: 0, expiration: Date(), decrementValue: 1.35, unlimitedExpiration: nil, numberOfRides: nil),
        MetroCard(name: "Student", cardType: CardType.unlimited, cardSubtype: CardSubtype.student, balance: nil, expiration: Date(), decrementValue: nil, unlimitedExpiration: nil, numberOfRides: 3),
        MetroCard(name: "SevenDay", cardType: CardType.unlimited, cardSubtype: CardSubtype.sevenDay, balance: nil, expiration: Date(), decrementValue: nil, unlimitedExpiration: addSevenDays(), numberOfRides: nil),
        MetroCard(name: "ThirtyDay", cardType: CardType.unlimited,  cardSubtype: CardSubtype.thirtyDay, balance: nil, expiration: Date(), decrementValue: nil, unlimitedExpiration: addThirtyDays(), numberOfRides: nil)
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
