//
//  AccountModelProtocol.swift
//  ProtoCollection
//
//  Created by Joseph McCraw on 4/8/21.
//

import Foundation

protocol AccountModelProtocol {
  
  /// Account Transaction
  /// - Parameters:
  ///   - deposit: amount depositd
  ///   - withdraw: amount withdrawn
  func transact(deposit: Double, withdraw: Double) -> Double
}
