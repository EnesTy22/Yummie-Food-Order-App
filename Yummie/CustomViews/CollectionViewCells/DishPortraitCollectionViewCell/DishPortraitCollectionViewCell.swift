//
//  DishPortraitCollectionViewCell.swift
//  Yummie
//
//  Created by Enes Talha Yılmaz on 17.03.2023.
//

import UIKit

class DishPortraitCollectionViewCell: UICollectionViewCell {
    static let identifier =
    "DishPortraitCollectionViewCell"
    
    @IBOutlet weak var caloriesLabel: UILabel!
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func setup(dish: Dish){
        titleLabel.text = dish.name
        dishImageView.kf.setImage(with: dish.image?.asUrl)
        descriptionLabel.text = dish.description
        caloriesLabel.text = dish.formattedCalories
    }
    
}
