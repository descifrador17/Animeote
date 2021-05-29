//
//  QuoteViewModel.swift
//  Animeote
//
//  Created by Dayal, Utkarsh on 29/05/21.
//

import Foundation

class QuoteViewModel: ObservableObject{
    
    @Published var quote: QuoteServerModel
    @Published var isQuoteSaved = false
    var prevQuote: QuoteServerModel?
    var isPrevQuoteSaved = false
    
    init() {
        quote = QuoteServerModel(anime: "", character: "", quote: "")
    }
    
    func getRandomQuote(){
        if isQuoteSaved && self.quote != self.prevQuote{
            DatabaseHandler().add(quote)
        }
        NetworkingApi().getRandomAnimeQuote(completionHandler: { result in
            self.prevQuote = self.quote
            self.isPrevQuoteSaved = self.isQuoteSaved
            self.isQuoteSaved = false
            self.quote = result
        })
    }
    
    func saveQuote(){
        isQuoteSaved.toggle()
    }
    
    func getPrevQuote(){
        self.isQuoteSaved = self.isPrevQuoteSaved
        self.quote = self.prevQuote ?? self.quote
    }
    
}

