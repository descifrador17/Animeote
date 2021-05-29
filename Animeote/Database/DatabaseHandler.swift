//
//  DatabaseHandler.swift
//  Animeote
//
//  Created by Dayal, Utkarsh on 29/05/21.
//

import SwiftUI
import CoreData

class DatabaseHandler {
    
    private let viewContext: NSManagedObjectContext = PersistenceController.shared.container.viewContext
    
    func add(_ quote: QuoteServerModel){
        let quoteModel = QuoteModel(context: self.viewContext)
        quoteModel.id = UUID()
        quoteModel.anime = quote.anime
        quoteModel.character = quote.character
        quoteModel.quote = quote.quote
        do{
            try self.viewContext.save()
        }
        catch{
            print("Unable to write to database")
        }
    }
    
    func fetch() -> [QuoteModel]?{
        var data:[QuoteModel]?
        do{
            data = try self.viewContext.fetch(QuoteModel.fetchRequest())
        }
        catch{
            print("Unable to fetch")
        }
        return data
    }
}
