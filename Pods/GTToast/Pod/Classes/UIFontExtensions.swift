//
//  UIFontExtensions.swift
//  Pods
//
//  Created by Grzegorz Tatarzyn on 03/10/2015.
//
//

extension UIFont {
    func sizeFor(_ content: String, constrain: CGSize) -> CGSize {
        return NSString(string: content).boundingRect(
            with: constrain,
            options: NSStringDrawingOptions.usesLineFragmentOrigin,
            attributes: convertToOptionalNSAttributedStringKeyDictionary([convertFromNSAttributedStringKey(NSAttributedString.Key.font) : self]),
            context: nil)
        .size
    }
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertToOptionalNSAttributedStringKeyDictionary(_ input: [String: Any]?) -> [NSAttributedString.Key: Any]? {
	guard let input = input else { return nil }
	return Dictionary(uniqueKeysWithValues: input.map { key, value in (NSAttributedString.Key(rawValue: key), value)})
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertFromNSAttributedStringKey(_ input: NSAttributedString.Key) -> String {
	return input.rawValue
}
