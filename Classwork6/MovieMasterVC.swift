//
//  MovieMasterVC.swift
//  Classwork6
//
//  Created by Mieln Be on 7/1/20.
//  Copyright © 2020 Hasan Alsaffar. All rights reserved.
//

import UIKit
var selected = Movie(movieName: "", movieReleaseDate: 2000, actors: [""], rating: 0.0, pgRating: "PG")
class MovieMasterVC: UIViewController {
    
    var marvelimages = MarvelMovieData
    var DCimages = DCMovieData
    
    @IBOutlet weak var marvelImg0: UIButton!
    @IBOutlet weak var marvelImg1: UIButton!
    @IBOutlet weak var marvelImg2: UIButton!
    @IBOutlet weak var marvelImg3: UIButton!
    @IBOutlet weak var marvelImg4: UIButton!
    @IBOutlet weak var marvelImg5: UIButton!
    
    @IBOutlet weak var dcImg0: UIButton!
    @IBOutlet weak var dcImg1: UIButton!
    @IBOutlet weak var dcImg2: UIButton!
    @IBOutlet weak var dcImg3: UIButton!
    @IBOutlet weak var dcImg4: UIButton!
    @IBOutlet weak var dcImg5: UIButton!
    
    func setMarvelImage(){
    marvelImg0.setBackgroundImage(UIImage(named:marvelimages[0].movieName), for: .normal)
    marvelImg1.setBackgroundImage(UIImage(named:marvelimages[1].movieName), for: .normal)
    marvelImg2.setBackgroundImage(UIImage(named:marvelimages[2].movieName), for: .normal)
    marvelImg3.setBackgroundImage(UIImage(named:marvelimages[3].movieName), for: .normal)
    marvelImg4.setBackgroundImage(UIImage(named:marvelimages[4].movieName), for: .normal)
    marvelImg5.setBackgroundImage(UIImage(named:marvelimages[5].movieName), for: .normal)
    }
     
   
    func setDCImage(){
     dcImg0.setBackgroundImage(UIImage(named: DCimages[0].movieName), for: .normal)
     dcImg1.setBackgroundImage(UIImage(named: DCimages[1].movieName), for: .normal)
     dcImg2.setBackgroundImage(UIImage(named: DCimages[2].movieName), for: .normal)
     dcImg3.setBackgroundImage(UIImage(named: DCimages[3].movieName), for: .normal)
     dcImg4.setBackgroundImage(UIImage(named: DCimages[4].movieName), for: .normal)
     dcImg5.setBackgroundImage(UIImage(named: DCimages[5].movieName), for: .normal)
             
    }

        override func viewDidLoad() {
        super.viewDidLoad()
        setMarvelImage()
        setDCImage()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func marvelBtns(_ sender: UIButton) {
        
        print("Marvel", sender.tag)
        selected = MarvelMovieData[sender.tag]
        performSegue(withIdentifier: "gotomovie", sender: nil)
        
    }
    
    
    @IBAction func dcBtns(_ sender: UIButton) {
        print("DC button \(sender.tag) is tapped")
        selected = DCMovieData[sender.tag]
        performSegue(withIdentifier: "gotomovie", sender: nil)
    }
    


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! MovieDetailsVC
        vc.movieData = selected
    }
 

}
    

