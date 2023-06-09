//
//  ListDishesViewController.swift
//  Yummie
//
//  Created by Enes Talha Yılmaz on 19.03.2023.
//

import UIKit
import ProgressHUD

class ListDishesViewController: UIViewController {

    @IBOutlet weak var DishListTableView: UITableView!
    var category : DishCategory!
    var dishes : [Dish] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        title = category.name
        registerCells()
        ProgressHUD.show()
        NetworkService.shared.fetchCategoryDishes(categoryId:  category.id ?? "") { (result) in
            switch result
            {
            case .success(let dishes):
                ProgressHUD.dismiss()
                self.dishes = dishes
                self.DishListTableView.reloadData()
            case .failure(let error):
                ProgressHUD.showError(error.localizedDescription
                ?? " Unknown Error")
            }
        }
        // Do any additional setup after loading the view.
    }
    
    private func registerCells()
    {
        DishListTableView.register(UINib(nibName: DishListTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: DishListTableViewCell.identifier)
    }
    

}
extension ListDishesViewController:
    UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dishes.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DishListTableViewCell.identifier) as! DishListTableViewCell
        cell.setup(dish:dishes[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = DishDetailViewController.instantiate()
        controller.dish = dishes[indexPath.row]
        
        navigationController?.pushViewController(controller , animated: true)
    }
}
