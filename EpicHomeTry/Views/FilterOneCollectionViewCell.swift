//
//  FilterOneCollectionViewCell.swift
//  EpicHomeTry
//
//  Created by Amr on 08/10/2021.
//

import UIKit

class FilterOneCollectionViewCell: UICollectionViewCell {
    
    lazy var imageX: UIImageView = {
     let imageView = UIImageView()
     imageView.contentMode = .scaleAspectFit
     imageView.clipsToBounds = true
     imageView.layer.allowsEdgeAntialiasing = true
     imageView.image = #imageLiteral(resourceName: "3")
     return imageView
   }()
   
   
   override init(frame: CGRect) {
        super.init(frame: frame)
       self.contentView.addSubview(imageX)
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
           make.bottom.equalToSuperview()
           make.width.equalToSuperview()
           make.height.equalToSuperview().multipliedBy(0.8)
           make.centerX.equalToSuperview()
       }
       
   }
    
    
}
