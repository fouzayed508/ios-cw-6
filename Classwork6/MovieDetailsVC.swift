//
//  MovieDetailsVC.swift
//  Classwork6
//
//  Created by Mieln Be on 7/3/20.
//  Copyright © 2020 Hasan Alsaffar. All rights reserved.
//

import UIKit


class MovieDetailsVC: UIViewController {
    var movieData : Movie?
    @IBOutlet weak var movieName: UINavigationItem!
    @IBOutlet weak var movieImg: UIImageView!
    @IBOutlet weak var movieRating: UILabel!
    @IBOutlet weak var movieRated: UILabel!
    @IBOutlet weak var movieReleaseDate: UILabel!
    
    @IBOutlet weak var actorImg1: UIImageView!
    @IBOutlet weak var actorName1: UILabel!
    @IBOutlet weak var actorImg2: UIImageView!
    @IBOutlet weak var actorName2: UILabel!
    @IBOutlet weak var actorImg3: UIImageView!
    @IBOutlet weak var actorName3: UILabel!
    
    @IBOutlet weak var ratingBG: UIView!
    
    @IBOutlet weak var ratedBG: UIView!
    
    @IBOutlet weak var yearBG: UIView!
    
    
    func setMovieDetails(){
        movieName.title = movieData!.movieName
        self.movieImg.image = UIImage (named: movieData!.movieName)
             self.movieRated.text = movieData!.pgRating
             self.movieRating.text = String(movieData!.rating)
             self.movieReleaseDate.text = String(movieData!.movieReleaseDate)
             self.actorImg1.image = UIImage (named: movieData!.actors[0])
             self.actorName1.text = movieData!.actors[0]
             self.actorImg2.image = UIImage (named : movieData!.actors[1])
             self.actorName2.text = movieData!.actors[1]
             self.actorImg3.image = UIImage (named : movieData!.actors[2])
             self.actorName3.text = movieData!.actors[2]
    }
  
    
    func configureUI(){
        ratedBG.layer.cornerRadius = 20
        ratingBG.layer.cornerRadius = 20
        yearBG.layer.cornerRadius = 20
    }
    
    

    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setMovieDetails()
        configureUI()
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
