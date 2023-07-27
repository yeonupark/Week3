//
//  wishListTableViewController.swift
//  Week3
//
//  Created by 마르 on 2023/07/27.
//

import UIKit

class wishListTableViewController: UITableViewController {
    @IBOutlet var addButton: UIButton!
    @IBOutlet var newTextField: UITextField!
    @IBOutlet var shoppingLabel: UILabel!
    
    var items = ["그립톡 구매하기", "사이다 구매", "아이패드 케이스 최저가 알아보기", "양말"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        shoppingLabel.text = "쇼핑"
        designTextField()
        designButton()
        tableView.rowHeight = 60

    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "wishListCell")!
        
        cell.textLabel?.text = items[indexPath.row]
        
        let check = indexPath.row == 0 ? "checkmark.square.fill" : "checkmark.square"
        cell.imageView?.image = UIImage(systemName: check)
        cell.imageView?.tintColor = .black
        
        let star =  indexPath.row == 1 ? "☆" : "★"
        cell.detailTextLabel?.text = star
        
        cell.backgroundColor = .lightGray
        
        return cell
    }
    
    @IBAction func addNewWish(_ sender: Any) {
        guard let text = newTextField.text else {
            print("오류 발생")
            return
        }
        if text.count < 1 {
            showAlert()
            return
        }
        items.append(text)
        tableView.reloadData()
        
        newTextField.text = ""
        view.endEditing(true)
    }
    
    func designTextField(){
        newTextField.backgroundColor = .lightGray
        newTextField.placeholder = "무엇을 구매하실건가요?"
    }
    
    func designButton(){
        addButton.backgroundColor = .darkGray
        addButton.layer.cornerRadius = 10
    }
}
