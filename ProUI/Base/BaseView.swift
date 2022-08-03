//
//  BaseView.swift
//  ProUI
//
//  Created by Aleksey on 03.08.2022.
//

import Foundation
import UIKit

class BaseView: UIView, UISetupable, UIUpdatable {
  
  // MARK: - Lifecycle
  override init(frame: CGRect) {
    super.init(frame: frame)
    setupUI()
  }
  
  required init?(coder: NSCoder) {
    super.init(coder: coder)
  }
  
  // MARK: - Functions
  func updateUI() {
    
  }
  
  func setupUI() {
    
  }
  
}
