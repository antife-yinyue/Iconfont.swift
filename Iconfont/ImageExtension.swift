import UIKit

/// Iconfont extension to UIImage.
extension UIImage {

  static func iconfont(content: String, familyName: String, size: CGFloat, color: UIColor = UIColor.blackColor()) -> UIImage {
    let paragraph = NSMutableParagraphStyle()
    paragraph.alignment = .Center

    var attributes = [
      NSForegroundColorAttributeName: color,
      NSParagraphStyleAttributeName: paragraph
    ]

    if let font = UIFont(name: familyName, size: size) {
      attributes[NSFontAttributeName] = font
    }

    UIGraphicsBeginImageContextWithOptions(CGSizeMake(size, size), false, 0)

    content.drawInRect(CGRectMake(0, 0, size, size), withAttributes: attributes)

    let image = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()

    return image
  }

}
