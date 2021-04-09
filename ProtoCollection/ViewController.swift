//
//  ViewController.swift
//  ProtoCollection
//
//  Created by Joseph McCraw on 4/8/21.
//

import UIKit

class ViewController: UIViewController {

  var accountView: AccountViewProtocol?
  var accountModel: AccountModelProtocol?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupView()
    setupModel()
  }
  
  func processTransactionRequest() {
    let depositString = accountView?.getDepositValue()
    let withdrawalString = accountView?.getWithdrawlValue()
    
    let deposit = getValue(depositString)
    let withdrawal = getValue(withdrawalString)
    
    let balance = accountModel?.transact(deposit: deposit, withdraw: withdrawal)
    accountView?.setBalanceValue(balanceAmount: String(format: "$%.02f", balance ?? 0))
  }
  
  func getValue(_ text: String?) -> Double {
    if let text = text {
      return Double(text) ?? 0
    }
    return 0
  }
  
  fileprivate func setupView() {
    if let aView = self.view as? AccountViewProtocol {
      if accountView == nil {
        setAccountView(aView)
      }
    }
  }
  
  fileprivate func setupModel() {
    if accountModel == nil {
      setAccountModel(AccountModel())
    }
  }
  
  
  func setAccountView(_ aView: AccountViewProtocol) {
    accountView = aView
    accountView?.setController(controller: self)
  }

  func setAccountModel(_ aModel: AccountModelProtocol) {
    accountModel = aModel
  }
  
}

