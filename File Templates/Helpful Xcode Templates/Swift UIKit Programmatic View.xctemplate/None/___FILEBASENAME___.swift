//___FILEHEADER___

import Foundation
import UIKit

class ___FILEBASENAMEASIDENTIFIER___: UIView {
    
    //MARK: - Non private properties
    
    //MARK: - UI Elements

    //MARK: - Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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
        // Setup view and subviews' initial parameters here (i.e. font, background colors, etc...)
    }
    
    private func setupViewHierarchy() {
        // Build the view hierarchy here
    }
    
    private func setupConstraints() {
        // Setup the constraints here
    }
    
    //MARK: - UI Refreshing
    
    private func refreshUI() {
        // Refresh the UI here (i.e. labels' texts, and other UI properties which changes, for example when public parameters is changed). You should call this method when a public parameter changes (in its didSet).
    }

}
