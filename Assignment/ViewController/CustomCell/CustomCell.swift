import UIKit

class CustomCell: UITableViewCell {

// MARK: Private Let Declaration:
let labTitle = UILabel()
private let rightInset: CGFloat = -10.0
private let leftInset: CGFloat = 10.0

override func awakeFromNib() {
    super.awakeFromNib()
    // Initialization code
    self.isUserInteractionEnabled = true
}

override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    // Calling UI Element setting
    setBgColor()
    addingElemetsOnContentVw()
    addingElemetsProperties()

    // Calling Setting Constraints Method
    setTitleConstraints()
}
required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
 }
}
// MARK: - Extension created for adding elements to cell

private extension CustomCell {
// MARK: - Setting Background Theme
func setBgColor() {
       self.backgroundColor = .clear
       contentView.backgroundColor = .clear
}

// MARK: - Adding Elements On Content

func addingElemetsOnContentVw() {
        self.contentView.addSubview(labTitle)
 }

// MARK: - Adding Properties On Elements

func addingElemetsProperties() {
         labTitle.textColor = .white
         // 0 number of lines for infinity max count.
         labTitle.numberOfLines = 0
         labTitle.textAlignment = .center
 }

// MARK: - Setting Title Constraints

func setTitleConstraints() {
        labTitle.mas.makeConstraints(closure: { make in
            make.top.equalTo()(NSNumber(value: 20))
            make.left.equalTo()(leftInset)
            make.right.equalTo()(rightInset)
         })
   }
}
