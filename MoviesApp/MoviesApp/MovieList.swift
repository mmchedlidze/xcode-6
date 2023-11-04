import Foundation
import UIKit

class Movies  {
    let name : String
    let genre : String
    let rate : String
    let poster : String
    var isFav : Bool
    let summary : String?
    let certificate : String?
    let runtime : String?
    let release : String?
    let director : String?
    let cast : String?
    
    init(name: String, genre: String, rate: String, poster: String, isFav: Bool, summary: String?, certificate: String?, runtime: String?, release: String?, director: String?, cast: String?) {
        self.name = name
        self.genre = genre
        self.rate = rate
        self.poster = poster
        self.isFav = isFav
        self.summary = summary
        self.certificate = certificate
        self.runtime = runtime
        self.release = release
        self.director = director
        self.cast = cast
    }
    }


let movieList = [
    Movies(name: "The Batman", genre: "Action", rate: "8.1", poster: "batman", isFav: false, summary: "When the Riddler, a sadistic serial killer, begins murdering key political figures in Gotham, Batman is forced to investigate the city's hidden corruption and question his family's involvement", certificate: "16+", runtime: "02:56", release: "2022", director: "Matt Reeves", cast: "Robert Pattinson, Zoe Kravitz, Jeffrey Wright, Colin Farrel, Paul Dano, John Turturro, Andy Serkis, Perer Sarsgaard"),
    Movies(name: "Uncharted", genre: "Adventure", rate: "7.9", poster: "uncharted", isFav: false,summary: "", certificate: "", runtime: "", release: "", director: "", cast: ""),
    Movies(name: "The Exorcism of God", genre: "Horror", rate: "5.6", poster: "exorcism", isFav: false,summary: "", certificate: "", runtime: "", release: "", director: "", cast: ""),
    Movies(name: "Turning Red", genre: "Comedy", rate: "7.1", poster: "red", isFav: false,summary: "", certificate: "", runtime: "", release: "", director: "", cast: ""),    Movies(name: "Spiderman: No Way Home", genre: "Action", rate: "8.1", poster: "spiderman", isFav: false,summary: "", certificate: "", runtime: "", release: "", director: "", cast: ""),
    Movies(name: "Morbius", genre: "Action", rate: "5.3", poster: "morbius", isFav: false,summary: "", certificate: "", runtime: "", release: "", director: "", cast: ""),
]
