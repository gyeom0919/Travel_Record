//
//  HomeViewController.swift
//  TravelRecord
//
//  Created by 겸 on 2022/12/22.
//

import UIKit
import Then

class HomeViewController : BaseViewController {
    
    private let travelTableView = UITableView().then {
        $0.backgroundColor = .systemBlue
    }
    
    override func addView() {
        view.addSubviews(travelTableView)
    }
    
    override func configureVC() {
        view.backgroundColor = .systemYellow
    }
    
    override func setLayout() {
        travelTableView.snp.makeConstraints{
            $0.edges.equalToSuperview().offset(20).inset(20)
        }
    }
}



#if DEBUG

import SwiftUI

struct HomeViewControllerPresentable: UIViewControllerRepresentable {
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
    
    func makeUIViewController(context: Context) -> some UIViewController {
        HomeViewController()
    }
}


struct HomeViewControllerPrepresentable_PreviewProvider : PreviewProvider {
    static var previews: some View {
        HomeViewControllerPresentable()
            .ignoresSafeArea()
    }
}

#endif

