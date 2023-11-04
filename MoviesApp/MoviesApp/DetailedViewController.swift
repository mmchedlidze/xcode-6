import UIKit
class DetailedViewController: UIViewController {
    var selectedMovie: Movies? 

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    private func setupUI() {
        view.backgroundColor = .white

        if let movie = selectedMovie {
            let titleLabel = UILabel()
            titleLabel.text = movie.name
            titleLabel.font = UIFont.boldSystemFont(ofSize: 20)
            titleLabel.textAlignment = .center

            let genreLabel = UILabel()
            genreLabel.text = "Genre: " + movie.genre
            genreLabel.textAlignment = .left

            let ratingLabel = UILabel()
            ratingLabel.text = "Rating: " + movie.rate
            ratingLabel.textAlignment = .left

            let imageView = UIImageView()
            imageView.image = UIImage(named: movie.poster)
            imageView.contentMode = .scaleAspectFit

            [titleLabel, genreLabel, ratingLabel, imageView].forEach {
                $0.translatesAutoresizingMaskIntoConstraints = false
                view.addSubview($0)
            }

            NSLayoutConstraint.activate([
                titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
                titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
                genreLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 4),
                genreLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                ratingLabel.topAnchor.constraint(equalTo: genreLabel.bottomAnchor, constant: 4),
                ratingLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                imageView.topAnchor.constraint(equalTo: ratingLabel.bottomAnchor, constant: 4),
                imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            

            ])
        }
    }
}
