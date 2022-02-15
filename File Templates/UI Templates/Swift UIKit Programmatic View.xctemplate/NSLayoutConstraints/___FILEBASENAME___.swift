//___FILEHEADER___

import Foundation
import UIKit

class ___FILEBASENAMEASIDENTIFIER___: UIView {
    
    //MARK: - Non private properties
    
    var greetingMessage: String? {
        didSet {
            refreshUI()
        }
    }
    
    var greetingColor: UIColor = .black {
        didSet {
            refreshUI()
        }
    }
    
    //MARK: - UI Elements
    
    private let titleLabel = UILabel()
    private let subtitleLabel = UILabel()
    
    //MARK: - Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //convenience initializer with example parameter
    convenience init(greetingMessage: String, greetingColor: UIColor) {
        self.init(frame: .zero)
        self.greetingMessage = greetingMessage
        self.greetingColor = greetingColor
        
        refreshUI()
    }
    
    private func setup() {
        setupSubviews()
        setupViewHierarchy()
        setupConstraints()
        refreshUI()
    }
}

//MARK: - UI configuration

extension ___FILEBASENAMEASIDENTIFIER___ {
    
    //MARK: - View and subviews setup
    
    private func setupSubviews() {
        titleLabel.font = UIFont.boldSystemFont(ofSize: 17.0)
        titleLabel.textColor = greetingColor
        titleLabel.textAlignment = .center
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        subtitleLabel.font = UIFont.boldSystemFont(ofSize: 15.0)
        subtitleLabel.textColor = .lightGray
        subtitleLabel.textAlignment = .center
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func setupViewHierarchy() {
        addSubview(titleLabel)
        addSubview(subtitleLabel)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8.0),
            subtitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            subtitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            subtitleLabel.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
    
    //MARK: - UI Refreshing
    
    private func refreshUI() {
        titleLabel.text = greetingMessage ?? "Hello World"
        titleLabel.textColor = greetingColor
        subtitleLabel.text = "Sample Programmatic UIKit View"
    }

}
