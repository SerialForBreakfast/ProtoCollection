//
//  AccountViewProtocol.swift
//  ProtoCollection
//
//  Created by Joseph McCraw on 4/8/21.
//

import Foundation

protocol AccountViewProtocol {
  func getWithdrawlValue() -> String
  func getDepositValue() -> String
  func setBalanceValue(balanceAmount: String)
  func setController(controller: ViewController)
}

