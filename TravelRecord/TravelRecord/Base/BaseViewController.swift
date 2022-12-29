//
//  BaseViewController.swift
//  TravelRecord
//
//  Created by 겸 on 2022/12/22.
//

import UIKit
import SnapKit
import Then
import RxSwift
import RxCocoa

class BaseViewController: UIViewController {
    
    @available(*, unavailable)
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
        addView()
        setLayout()
        configureVC()
        bind()
        configureNavigation()
        // Do any additional setup after loading the view.
    }
    
    public init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    deinit{
        print("\(type(of: self)): \(#function)")
    }
    
    func setUp(){}
    func addView(){}
    func setLayout(){}
    func configureVC(){}
    func bind(){}
    func configureNavigation(){}

}
