//
//  QuoteModel+CoreDataProperties.swift
//  Animeote
//
//  Created by Dayal, Utkarsh on 28/05/21.
//
//

import Foundation
import CoreData


extension QuoteModel {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<QuoteModel> {
        return NSFetchRequest<QuoteModel>(entityName: "QuoteModel")
    }

    @NSManaged public var anime: String?
    @NSManaged public var character: String?
    @NSManaged public var quote: String?

}

extension QuoteModel : Identifiable {

}
