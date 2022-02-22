//___FILEHEADER___

import Foundation
import UIKit
import Anchorage

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
        super.init(coder: coder)
        setup()
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
        
        subtitleLabel.font = UIFont.boldSystemFont(ofSize: 15.0)
        subtitleLabel.textColor = .lightGray
        subtitleLabel.textAlignment = .center
    }
    
    private func setupViewHierarchy() {
        addSubview(titleLabel)
        addSubview(subtitleLabel)
    }
    
    private func setupConstraints() {
        titleLabel.topAnchor == topAnchor
        titleLabel.leadingAnchor == leadingAnchor
        titleLabel.trailingAnchor == trailingAnchor
        
        subtitleLabel.topAnchor == titleLabel.bottomAnchor + 8.0
        subtitleLabel.leadingAnchor == leadingAnchor
        subtitleLabel.trailingAnchor == trailingAnchor
        subtitleLabel.bottomAnchor == bottomAnchor
    }
    
    //MARK: - UI Refreshing
    
    private func refreshUI() {
        titleLabel.text = greetingMessage ?? "Hello World"
        titleLabel.textColor = greetingColor
        subtitleLabel.text = "Sample Programmatic UIKit View"
    }

}
