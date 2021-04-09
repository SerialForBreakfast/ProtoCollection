//
//  ViewControllerTest.swift
//  ProtoCollectionTests
//
//  Created by Joseph McCraw on 4/8/21.
//

import XCTest
@testable import ProtoCollection

class ViewControllerTest: XCTestCase {
  var controller = ViewController()
  let mockView = MockView()
  
  override func setUp() {
    controller.setAccountView(mockView)
    controller.setAccountModel(AccountModel())
  }
  
  func testProcessTransactionRequest() {
    controller.processTransactionRequest()
    XCTAssertEqual("$1.00", mockView.balance)
  }
}

class MockView: AccountViewProtocol {
  var balance: String?
  func getWithdrawlValue() -> String {
    return "10"
  }
  
  func getDepositValue() -> String {
    return "11"
  }
  
  func setBalanceValue(balanceAmount: String) {
    balance = balanceAmount
  }
  
  func setController(controller: ViewController) {
//
  }
}
