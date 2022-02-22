import Foundation
import AVKit
import SwiftMessages

// MARK: - Creating Constants:

enum StringLiterals {

    struct SwiftMsg {
      static let status = MessageView.viewFromNib(layout: .statusLine)
      static let statusConfig = SwiftMessages.defaultConfig
      static let success = MessageView.viewFromNib(layout: .cardView)
      static let successConfig = SwiftMessages.defaultConfig
    }

    struct Colors {
      static let ColorBg = UIColor.black
      static let ColorNavBar = UIColor.blue
    }

}

