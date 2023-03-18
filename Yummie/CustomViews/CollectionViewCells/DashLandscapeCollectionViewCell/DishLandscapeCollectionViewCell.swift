//
//  DishLandscapeCollectionViewCell.swift
//  Yummie
//
//  Created by Enes Talha Yılmaz on 17.03.2023.
//

import UIKit

class DishLandscapeCollectionViewCell: UICollectionViewCell {

    static let identifier = "DishLandscapeCollectionViewCell"
    
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var caloriesLbl: UILabel!
    
    func setup(dish:Dish){
        dishImageView.kf.setImage(with: dish.image?.asUrl)
        titleLbl.text = dish.name
        descriptionLbl.text = dish.description
        caloriesLbl.text = dish.formattedCalories
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
