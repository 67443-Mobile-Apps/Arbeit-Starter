// Created for ArbeitFirebase on 10/19/20 
// Using Swift 5.0 
// Running on macOS 11.0
// Qapla'
//

import Foundation
import Firebase


struct Task {
  
  let ref: DatabaseReference?
  let key: String
  let name: String
  let addedByUser: String
  var completed: Bool
  
  init(name: String, addedByUser: String, completed: Bool, key: String = "") {
    self.ref = nil
    self.key = key
    self.name = name
    self.addedByUser = addedByUser
    self.completed = completed
  }
  

  
  
  
  
  
  func toAnyObject() -> Any {
    return [
      "name": name,
      "addedByUser": addedByUser,
      "completed": completed
    ]
  }
}
