//
//  CustomTableViewCell.swift
//  Week3
//
//  Created by 마르 on 2023/07/28.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    // 타입 프로퍼티
    static let identifier = "CustomTableViewCell"
    
    @IBOutlet var backView: UIView!
    @IBOutlet var checkBoxImageView: UIImageView!
    
    @IBOutlet var toDoLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var likeButton: UIButton!
    
    func configureCell(row: ToDo) { // 셀 세팅하는 함수!
        
        toDoLabel.text = row.main
        dateLabel.text = row.date
        
        let done: String
        
        if row.done {
            done = "checkmark.square.fill"
        } else {
            done = "checkmark.square"
        }
        let like: String
        if row.like {
            like = "star.fill"
        } else {
            like = "star"
        }
        checkBoxImageView.image = UIImage(systemName: done)
        likeButton.setImage(UIImage(systemName: like), for: .normal)
    }
    
}
