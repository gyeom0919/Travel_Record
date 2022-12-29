//
//  AddTravelViewController.swift
//  TravelRecord
//
//  Created by 겸 on 2022/12/27.
//

import UIKit
import Then

class AddTravelViewController: BaseViewController {
    
    private let titleTextInput = UITextField().then{
        $0.backgroundColor = .clear
    }
    
    private let textTextInput = CustomTextField(placeholder: "제목을 입력하세요")
    
    override func addView() {
        view.addSubviews(titleTextInput, textTextInput)
    }

    override func configureVC() {
        view.backgroundColor = .white
    }
    
    override func setLayout() {
        titleTextInput.snp.makeConstraints{
            $0.centerX.equalToSuperview()
            $0.top.equalTo(view.safeAreaLayoutGuide).offset(40)
            $0.left.equalTo(view.safeAreaLayoutGuide).offset(20)
            $0.height.equalTo(55)
        }
        
        textTextInput.snp.makeConstraints{
            $0.centerX.equalToSuperview()
            $0.top.equalTo(titleTextInput.snp.bottom).offset(40)
            $0.left.equalTo(view.safeAreaLayoutGuide).offset(20)
            $0.height.equalTo(55)
        }
    }
    
}

#if DEBUG

import SwiftUI

struct AddTravelViewControllerPresentable: UIViewControllerRepresentable {
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
    
    func makeUIViewController(context: Context) -> some UIViewController {
        AddTravelViewController()
    }
}


struct AddTravelViewControllerPrepresentable_PreviewProvider : PreviewProvider {
    static var previews: some View {
        AddTravelViewControllerPresentable()
            .ignoresSafeArea()
    }
}

#endif

