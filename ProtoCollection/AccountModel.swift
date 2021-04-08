//
//  AccountModel.swift
//  ProtoCollection
//
//  Created by Joseph McCraw on 4/8/21.
//

import Foundation

class AccountModel: AccountModelProtocol{
  func transact(deposit: Double, withdraw: Double) -> Double {
    balance += deposit
    balance -= withdraw
    return balance
  }
  
  var balance: Double = 0
}
