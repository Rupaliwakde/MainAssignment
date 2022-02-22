import Foundation
import UIKit

class CityTableViewDataSource<CELL: UITableViewCell, T>: NSObject, UITableViewDataSource {
    private var cellIdentifier: String!
    // Created items as Generics as received data can be of any type.
    private var items: [T]!
    var configureCell: (CELL, T) -> Void = {_, _ in }
    // Initializer for storing the values.
    init(cellIdentifier: String, items: [T], configureCell: @escaping (CELL, T) -> Void) {
        self.cellIdentifier = cellIdentifier
        self.items =  items
        self.configureCell = configureCell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        items.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? CELL
        cell?.selectionStyle = .none
        let item = self.items[indexPath.row]
        // Configurring cell with its items received.
        self.configureCell(cell!, item)
        return cell!
    }
}
