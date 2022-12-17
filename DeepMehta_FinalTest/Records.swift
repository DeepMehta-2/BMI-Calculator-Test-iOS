//
//  Records.swift
//  DeepMehta_FinalTest
//
//  Created by Parth Maru on 2022-12-15.
//

import UIKit
import CoreData

class Records: NSManagedObject {
    
    @NSManaged public var name: String?
    @NSManaged public var gender: String?
    @NSManaged public var age: String?
    @NSManaged public var date: String?
    @NSManaged public var height: Float
    @NSManaged public var weight: Float
    @NSManaged public var bmi: Float


}
