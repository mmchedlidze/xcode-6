import UIKit

class MovieCell: UICollectionViewCell {
    let posterImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let favoriteButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "heart"), for: .normal)
        button.tintColor = .red
        return button
    }()
    
    let ratingLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        label.textAlignment = .left
        return label
    }()
    
    let genreLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 14)
        label.textAlignment = .right
        return label
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 14)
        label.textAlignment = .right
        return label
    }()
    
    var movie: Movies? {
        didSet {
            updateCell()
        }
    }
    
    var favoriteButtonTapped: ((Bool) -> Void)?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupCell()
        setupButtonAction()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupCell()
        setupButtonAction()
    }
    
    private func updateCell() {
        guard let movie = movie else { return }
        if let posterImage = UIImage(named: movie.poster) {
            posterImageView.image = posterImage
        }
        ratingLabel.text = movie.rate
        genreLabel.text = movie.genre
        titleLabel.text = movie.name
        updateFavoriteButtonState(isFavorite: movie.isFav)
    }
    
    private func setupCell() {
        contentView.addSubview(posterImageView)
        contentView.addSubview(favoriteButton)
        contentView.addSubview(ratingLabel)
        contentView.addSubview(titleLabel)
        contentView.addSubview(genreLabel)
        
        buttonConstraints()
        ratingConstraints()
        genreConstraints()
        posterConstraints()
        titleConstraints()
    }
    
    private func buttonConstraints() {
        favoriteButton.translatesAutoresizingMaskIntoConstraints = false
        favoriteButton.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5).isActive = true
        favoriteButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -5).isActive = true
    }
    
    private func ratingConstraints() {
        ratingLabel.translatesAutoresizingMaskIntoConstraints = false
        ratingLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5).isActive = true
        ratingLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5).isActive = true
    }
    
    private func genreConstraints() {
        genreLabel.translatesAutoresizingMaskIntoConstraints = false
        genreLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -5).isActive = true
        genreLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -5).isActive = true
    }
    private func titleConstraints() {
        genreLabel.translatesAutoresizingMaskIntoConstraints = false
        genreLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -5).isActive = true
        genreLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -5).isActive = true
    }
    
    private func posterConstraints() {
        posterImageView.translatesAutoresizingMaskIntoConstraints = false
        posterImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0).isActive = true
        posterImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0).isActive = true
        posterImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0).isActive = true
        posterImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0).isActive = true
    }
    private func updateFavoriteButtonState(isFavorite: Bool) {
        if isFavorite {
            favoriteButton.setImage(UIImage(systemName: "heart.fill"), for: .normal)
        } else {
            favoriteButton.setImage(UIImage(systemName: "heart"), for: .normal)
        }
        favoriteButton.tintColor = .red
    }
    
    private func setupButtonAction() {
        favoriteButton.addTarget(self, action: #selector(favoriteButtonPressed), for: .touchUpInside)
    }
    
    @objc func favoriteButtonPressed() {
        guard let movie = movie else { return }
        movie.isFav.toggle()
        updateFavoriteButtonState(isFavorite: movie.isFav)
        favoriteButtonTapped?(movie.isFav)
    }
}


