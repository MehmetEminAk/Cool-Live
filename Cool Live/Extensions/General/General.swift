//
//  General.swift
//  Cool Live
//
//  Created by Macbook Air on 15.03.2023.
//

import Foundation
import UIKit

extension UIView {
    func addSubviews(_ views : [UIView]) {
        views.forEach { view in
            self.addSubview(view)
        }
    }
}

extension UILabel {
    func characterIndex(at point: CGPoint) -> Int? {
        guard let attributedText = self.attributedText else { return nil }
        
        let textStorage = NSTextStorage(attributedString: attributedText)
        let layoutManager = NSLayoutManager()
        textStorage.addLayoutManager(layoutManager)
        
        let textContainer = NSTextContainer(size: self.bounds.size)
        textContainer.lineFragmentPadding = 0
        textContainer.maximumNumberOfLines = self.numberOfLines
        textContainer.lineBreakMode = self.lineBreakMode
        layoutManager.addTextContainer(textContainer)
        
        let glyphIndex = layoutManager.glyphIndex(for: point, in: textContainer)
        let characterIndex = layoutManager.characterIndexForGlyph(at: glyphIndex)
        
        return characterIndex
    }
}


extension UIViewController {
    func presentAlert(errTitle : String = "Error!" , errMsg : String = "An unknown error occured" , style : UIAlertController.Style = .alert , actions : [UIAlertAction]?){
        let alert = UIAlertController(title: errTitle, message: errMsg, preferredStyle: style)
        if let _ = actions {
            actions?.forEach({ action in
                alert.addAction(action)
            })
        }
        self.present(alert, animated: true)
        
    }
}


extension UIColor {
    convenience init(red: Int, green: Int, blue: Int, alpha: CGFloat = 1.0) {
        let redValue = CGFloat(red) / 255.0
        let greenValue = CGFloat(green) / 255.0
        let blueValue = CGFloat(blue) / 255.0
        self.init(red: redValue, green: greenValue, blue: blueValue, alpha: alpha)
    }
}
