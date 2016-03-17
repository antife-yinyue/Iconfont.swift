import UIKit
import XCTest
@testable import Iconfont

class IconfontTests: XCTestCase {

  let fontPath = "Assets/Fonts/FontAwesome.otf"
  let bundle = NSBundle(forClass: IconfontTests.self)

  func testFontRegistration() {
    UIFont.register(fontPath, bundle: bundle)
    XCTAssertFalse(UIFont.fontNamesForFamilyName("FontAwesome").isEmpty, "Should be False")
  }

  func testCreateUIFont() {
    UIFont.register(fontPath, bundle: bundle)
    let font = UIFont(name: "FontAwesome", size: 233)
    XCTAssertNotNil(font, "Shold not be nil")
  }

  func testUIImageExtension() {
    UIFont.register(fontPath, bundle: bundle)
    let img = UIImage.iconfont("\u{f09b}", familyName: "FontAwesome", size: 666)
    XCTAssertTrue(img.size.width == 666.0, "Should be True")
  }

}
