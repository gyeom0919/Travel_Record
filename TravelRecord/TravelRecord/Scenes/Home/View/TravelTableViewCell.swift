//
//  TravelTableViewCell.swift
//  TravelRecord
//
//  Created by 겸 on 2022/12/22.
//

import UIKit
import Then

class TravelTableViewCell: UITableViewCell {
    
    struct CustomCellModel {
        let country : String
        let date : Date
        let total : String
    }
    
    private let titleLabel = UILabel().then{
        $0.text = "OO과 함께하는 베트남 여행"
        $0.font = .systemFont(ofSize: 20)
        $0.adjustsFontForContentSizeCategory = true
    }
    
    private let date = UILabel().then{
        $0.text = "date"
        $0.font = .systemFont(ofSize: 18)
    }
    
    private let totalLabel = UILabel().then{
        $0.text = "$380"
    }
    
    static let identifier = "CustomCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addView()
        setLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addView() {
        self.addSubviews(titleLabel, date, totalLabel)
    }
    
    func setLayout() {
        titleLabel.snp.makeConstraints{
            $0.left.top.equalToSuperview().offset(10)
            $0.right.equalToSuperview().inset(90)
        }
        
        date.snp.makeConstraints{
            $0.left.equalTo(titleLabel)
            $0.top.equalTo(titleLabel).offset(40)
        }
        
        totalLabel.snp.makeConstraints{
            $0.right.equalToSuperview().inset(30)
            $0.centerY.equalToSuperview()
        }
    }
    
    
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
