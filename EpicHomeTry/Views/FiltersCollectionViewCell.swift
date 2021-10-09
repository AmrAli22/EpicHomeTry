//
//  FiltersCollectionViewCell.swift
//  EpicHomeTry
//
//  Created by Amr on 08/10/2021.
//

import UIKit
import SnapKit

class FiltersCollectionViewCell: UICollectionViewCell {
 
     lazy var imageX: UIImageView = {
      let imageView = UIImageView()
      imageView.contentMode = .scaleAspectFit
      imageView.clipsToBounds = true
      imageView.layer.allowsEdgeAntialiasing = true
      imageView.image = #imageLiteral(resourceName: "1")
      return imageView
    }()
    
    private lazy var TitleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "Filter"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        return label
    }()
    
    override init(frame: CGRect) {
         super.init(frame: frame)
        self.contentView.addSubview(imageX)
        self.contentView.addSubview(TitleLabel)
        self.contentView.backgroundColor = .white
        SetupView()
     }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
 
    }
    
    func SetupView()  {
        imageX.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.width.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.8)
            make.centerX.equalToSuperview()
        }
        
        TitleLabel.snp.makeConstraints { make in
            make.bottom.equalToSuperview()
            make.centerX.equalToSuperview()
            make.top.equalTo(imageX.snp.bottom)
            make.width.equalToSuperview()
        }
        
    }
    
}
