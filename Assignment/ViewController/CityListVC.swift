import UIKit
import SwiftyMasonry
import SwiftMessages
import ANLoader

class CityListVC: UIViewController {

// MARK: - Private Lets

private var dataViewModelObject: DataViewModel!
private var dataArr = [JsonListData]()
private let cityTable = UITableView()
private let refreshControl = UIRefreshControl()
private let cellReuseIdentifier = "cell"
private var dataSource: CityTableViewDataSource<CustomCell, JsonListData>!

override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    setNavBar()
    callToViewModelForUIUpdate()
  }
}

private extension CityListVC {
// MARK: - Setting Navigation Bar
func setNavBar() {
    navigationController?.navigationBar.barTintColor = StringLiterals.Colors.ColorNavBar
    navigationController?.navigationBar.isTranslucent = false
    self.title = "Cities Of Maharashtra"
    // Updating UI
    showUI()
}
// MARK: - Showing UI
func showUI() {
    self.view.backgroundColor = StringLiterals.Colors.ColorBg
    cityTable.backgroundColor = .clear
    cityTable.bounces = false
    cityTable.separatorStyle = .singleLine
    cityTable.separatorColor = .white
    cityTable.register(CustomCell.self, forCellReuseIdentifier: cellReuseIdentifier)
    self.view.addSubview(cityTable)
    // Setting Constraints for TableView
    cityTable.mas.makeConstraints(closure: { make in
            make.top.equalTo()(view)
            make.left.equalTo()(view)
            make.right.equalTo()(view)
            make.bottom.equalTo()(view)
    })
}
// MARK: - Updating UI
func callToViewModelForUIUpdate() {
    // Binding of view with model
    self.dataViewModelObject = DataViewModel()
    self.dataViewModelObject.bindViewModelToController = {
    }
    self.updateDataSource()
}

// MARK: - Updating Data Table From Url
func updateDataSource() {
     let  dataArray = self.dataViewModelObject.jsonListData.rows
     // find states that match the state
     dataArr =  dataArray.filter { $0.state == "Maharashtra" }
     guard dataArr.count != 0
     else {
            StringLiterals.SwiftMsg.status.configureContent(body: ("Data Not Found"))
            SwiftMessages.show(config: StringLiterals.SwiftMsg.statusConfig, view: StringLiterals.SwiftMsg.status)
            return
          }
     reloadTable()
}
// MARK: - Reloading Table
func reloadTable() {
    // Initialising CityTableViewDataSource with its arguments having appropriate value and assigning to the dataSource.
    self.dataSource = CityTableViewDataSource(cellIdentifier: cellReuseIdentifier,
                                             items: self.dataArr,
                                             configureCell: { (cell, row) in
       cell.labTitle.text = row.name
    })
    DispatchQueue.main.async {
        self.cityTable.dataSource = self.dataSource
        self.cityTable.reloadData()
    }
 }
}
