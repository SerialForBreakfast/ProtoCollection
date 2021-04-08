//
//  AccountModelTest.swift
//  ProtoCollectionTests
//
//  Created by Joseph McCraw on 4/8/21.
//

import XCTest
@testable import ProtoCollection

class AccountModelTest: XCTestCase {
  var model: AccountModel?
  
  override func setUp() {
    model = AccountModel()
    
  }
  
  func testTransaction() {
    let result = model?.transact(deposit: 10, withdraw: 5)
    XCTAssert(result == 5)
  }
  
}
