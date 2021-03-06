//
//  PokerHands.swift
//  VideoPoker
//
//  Created by Paul Griffiths on 5/9/15.
//  Copyright (c) 2015 Paul Griffiths. All rights reserved.
//

public func ==(first: PokerHands, second: PokerHands) -> Bool {
    return first.rawValue == second.rawValue
}

public func <(first: PokerHands, second: PokerHands) -> Bool {
    return first.rawValue < second.rawValue
}

public enum PokerHands: Int, Equatable, Comparable, Printable {
    case HighCard = 0
    case Pair
    case TwoPair
    case Three
    case Straight
    case Flush
    case FullHouse
    case Four
    case StraightFlush
    case RoyalFlush
    
    public static let values: [PokerHands] = [
        .HighCard, .Pair, .TwoPair, .Three, .Straight, .Flush,
        .FullHouse, .Four, .StraightFlush, .RoyalFlush
    ]
    
    private static let names: [PokerHands : String] = [
        .HighCard : "High Card",
        .Pair : "Pair",
        .TwoPair : "Two Pair",
        .Three : "Three of a Kind",
        .Straight : "Straight",
        .Flush : "Flush",
        .FullHouse : "Full House",
        .Four : "Four of a Kind",
        .StraightFlush : "Straight Flush",
        .RoyalFlush : "Royal Flush"
    ]
    
    public var description: String {
        return PokerHands.names[self]!
    }
}