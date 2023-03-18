//
//  OnboardingCollectionViewCell.swift
//  Yummie
//
//  Created by Enes Talha Yılmaz on 15.03.2023.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String(describing: OnboardingCollectionViewCell.self)
    @IBOutlet weak var slideTitleDescription: UILabel!
    @IBOutlet weak var slideTitleLabel: UILabel!
    @IBOutlet weak var slideImageView: UIImageView!
    func setup(slide: OnboardingSlide)
    {
        slideImageView.image = slide.image
        slideTitleLabel.text=slide.title
        slideTitleDescription.text = slide.description
    }
}
