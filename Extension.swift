//
//  Extension.swift
//  Week3
//
//  Created by 마르 on 2023/07/27.
//

import Foundation
import UIKit

extension UITableViewController {
    func showAlert(){
        
        let alert = UIAlertController(title: "알림", message: "내용을 입력해주세요!", preferredStyle: .actionSheet)
        let ok = UIAlertAction(title: "확인", style: .default)
        alert.addAction(ok)
        present(alert,animated: true)
    }
    
    
}

extension UILabel {
    func configureTitleText(){
        self.textColor = .black
        self.font = .boldSystemFont(ofSize: 20)
        self.textAlignment = .center
    }
}
