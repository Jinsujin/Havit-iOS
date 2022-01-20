//
//  ContentsCollectionViewCell_sort3.swift
//  Havit
//
//  Created by 박예빈 on 2022/01/12.
//

import UIKit

import SnapKit

final class CategoryContents1xNCollectionViewCell: BaseCollectionViewCell {
    
     let borderView: UIView = {
        let view = UIView()
        view.backgroundColor = .gray000
        return view
    }()
    
     let mainImageView: UIImageView = {
       let imageView = UIImageView()
       imageView.image = UIImage(named: "contentsDummyImg3")
       imageView.layer.cornerRadius = 4
       return imageView
   }()
   
     let alarmImageView: UIImageView = {
       let imageView = UIImageView()
       imageView.image = ImageLiteral.iconAlarmtagPuple
       return imageView
   }()
   
     var titleLabel: UILabel = {
       let label = UILabel()
       label.text = "슈슈슉 이것은 제목입니다 슈슉 슉슉 이것"
       label.font = UIFont.font(FontName.pretendardMedium, ofSize: CGFloat(15))
       label.textColor = .black
       label.numberOfLines = 2
       return label
   }()
   
     var subtitleLabel: UILabel = {
       let label = UILabel()
       label.text = "슈슈슉 이것은 제목입니다 슈슉 슉 슉 슈슉 슈슈슈슈슈슉 슉 슉"
       label.font = UIFont.font(FontName.pretendardReular, ofSize: CGFloat(9))
       label.textColor = .gray003
       label.textColor = .black
       return label
   }()
   
     var dateLabel: UILabel = {
       let label = UILabel()
       label.text = "2021. 11. 24 · "
       label.font = UIFont.font(FontName.pretendardReular, ofSize: CGFloat(9))
       label.textColor = .gray002
       return label
   }()
   
     var linkLabel: UILabel = {
       let label = UILabel()
       label.text = "www.beansbin.oopy.ioooooooooooo"
       label.font = UIFont.font(FontName.pretendardReular, ofSize: CGFloat(9))
       label.textColor = .gray002
       return label
   }()
   
    var moreButton: UIButton = {
        let button = UIButton()
        button.setImage(ImageLiteral.btnMore, for: .normal)
        return button
   }()
   
     var isReadImageView: UIImageView = {
       let imageView = UIImageView()
       imageView.image = ImageLiteral.btnContentsRead
       return imageView
   }()
   
     var alarmLabel: UILabel = {
       let label = UILabel()
       label.text = "2021. 11. 17 오전 12:30 알림 예정"
       label.font = UIFont.font(FontName.pretendardSemibold, ofSize: CGFloat(9))
       label.textColor = .havitPurple
       return label
   }()
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
    }
    
    override func render() {
        contentView.addSubViews([mainImageView, titleLabel, subtitleLabel, dateLabel, linkLabel, alarmLabel, moreButton, isReadImageView, borderView])
        mainImageView.addSubview(alarmImageView)
        setupImageSectionLayout()
        setupTitleSectionLayout()
    }
    
    func setupImageSectionLayout() {
        mainImageView.snp.makeConstraints {
            $0.top.equalTo(contentView).offset(17)
            $0.leading.equalTo(contentView).offset(16)
            $0.trailing.equalTo(contentView).inset(16)
            $0.height.equalTo(184)
        }
        
        alarmImageView.snp.makeConstraints {
            $0.leading.equalTo(mainImageView)
            $0.top.equalTo(mainImageView)
            $0.width.height.equalTo(40)
        }
    }
    
    func setupTitleSectionLayout() {
        moreButton.snp.makeConstraints {
            $0.top.equalTo(mainImageView.snp.bottom).offset(15)
            $0.trailing.equalTo(contentView).inset(16)
            $0.width.equalTo(16)
            $0.height.equalTo(10)
        }
        
        titleLabel.snp.makeConstraints {
            $0.leading.equalTo(contentView).offset(16)
            $0.top.equalTo(mainImageView.snp.bottom).offset(15)
            $0.trailing.equalTo(moreButton.snp.leading).inset(18)
        }
        
        subtitleLabel.snp.makeConstraints {
            $0.leading.trailing.equalTo(contentView).offset(16)
            $0.top.equalTo(titleLabel.snp.bottom).offset(9)
        }
        
        dateLabel.snp.makeConstraints {
            $0.leading.equalTo(contentView).offset(16)
            $0.top.equalTo(subtitleLabel.snp.bottom).offset(9)
            $0.height.equalTo(10)
        }

        linkLabel.snp.makeConstraints {
            $0.leading.equalTo(dateLabel.snp.trailing)
            $0.top.equalTo(subtitleLabel.snp.bottom).offset(9)
            $0.trailing.equalTo(moreButton.snp.leading).inset(60)
            $0.height.equalTo(10)
        }
        
        alarmLabel.snp.makeConstraints {
            $0.leading.equalTo(contentView).offset(16)
            $0.top.equalTo(dateLabel.snp.bottom).offset(7)
            $0.trailing.equalTo(isReadImageView.snp.leading).inset(1)
            $0.width.equalTo(182)
            $0.height.equalTo(13)
        }
        
        isReadImageView.snp.makeConstraints {
            $0.trailing.equalTo(contentView).inset(16)
            $0.bottom.equalTo(borderView.snp.top).inset(5)
            $0.width.equalTo(31)
            $0.height.equalTo(42)
        }
        
        borderView.snp.makeConstraints {
            $0.leading.trailing.bottom.equalTo(contentView)
            $0.height.equalTo(1)
        }
    }
}
