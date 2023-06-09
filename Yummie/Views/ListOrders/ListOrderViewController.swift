//
//  ListOrderViewController.swift
//  Yummie
//
//  Created by Enes Talha Yılmaz on 19.03.2023.
//

import UIKit
import ProgressHUD

class ListOrderViewController: UIViewController {
    
    @IBOutlet weak var orderTableView: UITableView!
    var orders : [Order]=[]
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCells()
        ProgressHUD.show()

        
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        NetworkService.shared.fetchOrders { [weak self] (result) in
            switch result {
            case .success(let orders):
                ProgressHUD.dismiss()
                self?.orders = orders
                self?.orderTableView.reloadData()
            case .failure(let error):
                ProgressHUD.showError(error.localizedDescription ?? "UnknownError")
            }
        }
    }
    
    private func registerCells(){
        orderTableView.register(UINib(nibName: DishListTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: DishListTableViewCell.identifier)
    }
    
}

extension ListOrderViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        orders.count
    }
    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DishListTableViewCell.identifier) as! DishListTableViewCell
        cell.setup(order: orders[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = DishDetailViewController.instantiate()
        controller.dish = orders[indexPath.row].dish
        navigationController?.pushViewController(controller, animated: true)
    }
}
    
