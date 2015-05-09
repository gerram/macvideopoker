//
//  Hand.swift
//  VideoPoker
//
//  Created by Paul Griffiths on 5/9/15.
//  Copyright (c) 2015 Paul Griffiths. All rights reserved.
//

class Hand: Printable {
    private var cardList: CardList
    
    init(cardList: CardList) {
        self.cardList = cardList
    }
    
    convenience init(cards: Card...) {
        self.init(cardList: CardList(cards: cards))
    }
    
    convenience init(cards: Cards...) {
        self.init(cardList: CardList(cards: cards))
    }
    
    convenience init(cards: [Card]) {
        self.init(cardList: CardList(cards: cards))
    }
    
    convenience init(cards: [Cards]) {
        self.init(cardList: CardList(cards: cards))
    }
    
    var count: Int {
        return cardList.count
    }
    
    var isEmpty: Bool {
        return cardList.isEmpty
    }
    
    var description: String {
        return cardList.description
    }
    
    var cards: CardList {
        return cardList
    }
}