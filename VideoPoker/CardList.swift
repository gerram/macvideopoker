//
//  CardList.swift
//  VideoPoker
//
//  Created by Paul Griffiths on 5/9/15.
//  Copyright (c) 2015 Paul Griffiths. All rights reserved.
//

import Darwin

struct CardList: SequenceType, Printable {
    private var cards: [Card] = []
    
    init() {
        
    }
    
    init(cards: Card...) {
        self.cards.extend(cards)
    }
    
    init(cards: Cards...) {
        for card in cards {
            self.cards.append(card.card)
        }
    }
    
    init(cards: [Card]) {
        self.cards.extend(cards)
    }
    
    init(cards: [Cards]) {
        for card in cards {
            self.cards.append(card.card)
        }
    }
    
    var description: String {
        var string = "["
        var separator: String?
        
        for card in cards {
            if let sep = separator {
                string += sep
            }
            else {
                separator = ","
            }
            
            string += card.shortDescription
        }
        
        string += "]"
        return string
    }
    
    var isEmpty: Bool {
        return cards.isEmpty
    }
    
    var count: Int {
        return cards.count
    }
    
    mutating func append(card: Card) {
        cards.append(card)
    }
    
    mutating func append(card: Cards) {
        append(card.card)
    }
    
    mutating func append(cardList: CardList) {
        cards.extend(cardList.cards)
    }
    
    mutating func removeLast() -> Card {
        return cards.removeLast()
    }
    
    subscript(index: Int) -> Card {
        get {
            return cards[index]
        }
        
        set {
            cards[index] = newValue
        }
    }
    
    mutating func clear() {
        cards.removeAll(keepCapacity: false)
    }
    
    mutating func shuffle() {
        for i in 0 ..< (count - 1) {
            let j = Int(arc4random_uniform(UInt32(count - i))) + i
            swap(&self[i], &self[j])
        }
    }
    
    func generate() -> IndexingGenerator<[Card]> {
        return cards.generate()
    }
}
