//
//  CustomLabelExample.swift
//  ProUI
//
//  Created by Aleksey on 03.08.2022.
//

import Foundation
import UIKit

fileprivate enum Defaults {
  static let text = "Count:"
  static let margin = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
}

extension ViewController {
  
  class CustomLabelExample: BaseView {
    
    // MARK: - Proporties
    private(set) var count: Int = 0
    private var margin: UIEdgeInsets = Defaults.margin
    
    // MARK: - UI
    private lazy var label: UILabel = {
      let label = UILabel()
      label.textAlignment = .center
      label.text = Defaults.text
      return label
    }()
    
    // MARK: - Functions
    func setup(count: Int) {
      setup(count: count, margin: margin)
    }
    
    func setup(count: Int, margin: UIEdgeInsets) {
      self.count = count
      self.margin = margin
      updateUI()
    }
    
    override func updateUI() {
      label.text = "\(Defaults.text) \(count)"
      label.snp.updateConstraints { make in
        make.top.bottom.leading.trailing.equalToSuperview().inset(margin)
      }
      UIView.animate(withDuration: 0.3) {
        self.layoutIfNeeded()
      }
    }
    
    override func setupUI() {
      backgroundColor = .systemRed
      
      addSubview(label)
      label.snp.makeConstraints { make in
        make.top.bottom.leading.trailing.equalToSuperview().inset(margin)
      }
    }
    
  }
  
}
