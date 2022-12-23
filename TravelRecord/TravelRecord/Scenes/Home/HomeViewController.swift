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
        $0.backgroundColor = .white
        
    }
    
    override func addView() {
        view.addSubviews(travelTableView)
    }
    
    override func configureVC() {
        travelTableView.delegate = self
        travelTableView.dataSource = self
        
        travelTableView.register(TravelTableViewCell.self, forCellReuseIdentifier: "CustomCell")
        view.backgroundColor = .systemYellow
    }
    
    override func setLayout() {
        travelTableView.snp.makeConstraints{
            $0.edges.equalTo(view.safeAreaLayoutGuide)
            $0.bottom.equalTo(view.safeAreaLayoutGuide).inset(50)
        }
    }
    
    override func configureNavigation() {
        self.navigationItem.largeTitleDisplayMode = .always
        self.navigationItem.title = "Record your Travel"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "기록 추가", style: .plain, target: self, action: .none)
    }
}

//MARK: - UITableSetting

extension HomeViewController : UITableViewDataSource, UITableViewDelegate {
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = travelTableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! TravelTableViewCell
        
        cell.textLabel?.text = "Cell at row \(indexPath.row)"
        
        return cell
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

