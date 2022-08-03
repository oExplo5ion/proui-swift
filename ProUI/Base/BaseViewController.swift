//
//  BaseViewController.swift
//  ProUI
//
//  Created by Aleksey on 03.08.2022.
//

import Foundation
import UIKit

class BaseViewController: UIViewController, UISetupable, UIUpdatable {
  
  // MARK: - Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    setupUI()
  }
  
  // MARK: - Functions
  func updateUI() {
    
  }
  
  func setupUI() {
    view.backgroundColor = .white
  }
  
}
