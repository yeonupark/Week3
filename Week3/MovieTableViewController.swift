//
//  MovieTableViewController.swift
//  Week3
//
//  Created by 마르 on 2023/07/28.
//

import UIKit

class MovieTableViewController: UITableViewController {
    
    let popularMovie = MovieInfo()
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // 1. 셀 개수
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return popularMovie.movie.count
    }
    
    // 2. 셀 디자인 및 데이터 처리
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MovieTableViewCell.identifier) as! MovieTableViewCell
        
        let row = popularMovie.movie[indexPath.row]
        
        cell.configureCell(row: row)

//        cell.posterImageView.image = UIImage(named: row.title)
//        cell.titleLabel.text = row.title
//        cell.dateLabel.text = row.releaseDate
//        cell.runningTimeLabel.text = "\(row.runtime)분"
//        cell.rateLabel.text = "\(row.rate)점"
//        cell.contextTextView.text = row.overview
        
        return cell
    }
    
}
