//
//  ViewController.swift
//  ProUI
//
//  Created by Aleksey on 03.08.2022.
//

import UIKit

fileprivate enum Defaults {
  static let margin: CGFloat = 16
}

class ViewController: BaseViewController {

  // MARK: - UI
  private lazy var label: CustomLabelExample = {
    let label = CustomLabelExample()
    label.setup(count: label.count, margin: UIEdgeInsets(
      top: 10,
      left: 10,
      bottom: 10,
      right: 10
    ))
    return label
  }()
  
  private lazy var button: UIButton = {
    let button = UIButton()
    button.setTitle("Append count", for: .normal)
    button.backgroundColor = .systemBlue
    button.addTarget(self, action: #selector(appendCount), for: .touchUpInside)
    return button
  }()
  
  private lazy var updateMarginButton: UIButton = {
    let button = UIButton()
    button.setTitle("Update margin", for: .normal)
    button.backgroundColor = .systemRed
    button.addTarget(self, action: #selector(updateLabelMargin), for: .touchUpInside)
    return button
  }()
  
  private lazy var stack: UIStackView = {
    let stack = UIStackView()
    stack.axis = .vertical
    stack.distribution = .fill
    stack.spacing = 10
    stack.addArrangedSubview(updateMarginButton)
    stack.addArrangedSubview(button)
    return stack
  }()
  
  // MARK: - Lifecycle
  
  // MARK: - Functions
  @objc
  private func appendCount() {
    label.setup(count: label.count + 1)
  }
  
  @objc
  private func updateLabelMargin() {
    let margin = UIEdgeInsets(
      top: CGFloat.random(in: 0..<50),
      left: CGFloat.random(in: 0..<50),
      bottom: CGFloat.random(in: 0..<50),
      right: CGFloat.random(in: 0..<50)
    )
    label.setup(count: label.count, margin: margin)
  }
  
  override func setupUI() {
    super.setupUI()
    
    view.addSubview(label)
    label.snp.makeConstraints { make in
      make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(Defaults.margin)
      make.leading.trailing.equalToSuperview().inset(Defaults.margin)
    }
    
    view.addSubview(stack)
    stack.snp.makeConstraints { make in
      make.leading.trailing.equalToSuperview().inset(Defaults.margin)
      make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom).inset(Defaults.margin)
    }
  }
}

