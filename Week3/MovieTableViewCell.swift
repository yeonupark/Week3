//
//  MovieTableViewCell.swift
//  Week3
//
//  Created by 마르 on 2023/07/28.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    static let identifier = "MovieTableViewCell"
    
    @IBOutlet var posterImageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var runningTimeLabel: UILabel!
    @IBOutlet var rateLabel: UILabel!
    @IBOutlet var contextTextView: UITextView!
    
    func configureCell(row: Movie) {
        
        posterImageView.image = UIImage(named: row.title)
        titleLabel.text = row.title
        dateLabel.text = row.releaseDate+" |"
        runningTimeLabel.text = "\(row.runtime)분 |"
        rateLabel.text = "\(row.rate)점"
        contextTextView.text = row.overview
        
        titleLabel.font = .boldSystemFont(ofSize: 17)
        dateLabel.font = .systemFont(ofSize: 15)
        runningTimeLabel.font = .systemFont(ofSize: 15)
        rateLabel.font = .systemFont(ofSize: 15)
        contextTextView.font = .systemFont(ofSize: 12)
        
    }
    
    
}
