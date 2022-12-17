//
//  Records+CoreDataProperties.swift
//  DeepMehta_FinalTest
//
//Created by Deep Mehta on 16/12/22.
//  Final Exam - iOS Development
//  Description: Basic application for bmi calculator.
//
//

import Foundation
import CoreData


extension Records {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Records> {
        return NSFetchRequest<Records>(entityName: "Records")
    }

    @NSManaged public var age: String?
    @NSManaged public var bmi: Float
    @NSManaged public var date: String?
    @NSManaged public var gender: String?
    @NSManaged public var height: Float
    @NSManaged public var name: String?
    @NSManaged public var weight: Float

}

extension Records : Identifiable {

}
