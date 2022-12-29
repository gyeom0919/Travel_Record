//
//  CustomTextField.swift
//  TravelRecord
//
//  Created by 겸 on 2022/12/29.
//

import UIKit
import RxSwift
import RxCocoa

class CustomTextField: UITextField {

    private let disposeBag = DisposeBag()
    
    init(placeholder : String) {
        super.init(frame: .zero)
        self.attributedPlaceholder = .init(string: placeholder, attributes: [
            .foregroundColor : UIColor.systemGray.cgColor])
        self.backgroundColor = .systemCyan.withAlphaComponent(0.3)
        self.layer.cornerRadius = 12
        self.clearButtonMode = .always
        bind()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func bind() {
        self.rx.controlEvent(.editingDidBegin)
            .bind(with: self) { owner, _ in
                owner.layer.borderColor = UIColor.systemBlue.cgColor
                owner.layer.borderWidth = 1
            }
            .disposed(by: disposeBag)

        self.rx.controlEvent(.editingDidEnd)
            .bind(with: self) { owner, _ in
                owner.layer.borderColor = UIColor.systemBlue.cgColor
                owner.layer.borderWidth = 0
            }
            .disposed(by: disposeBag)
    }
    

}
