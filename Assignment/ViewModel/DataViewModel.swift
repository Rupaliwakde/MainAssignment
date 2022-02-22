import UIKit

class DataViewModel: NSObject {

// MARK: - For Binding ViewModel-ViewController

private(set) var jsonListData: DataList! {
    didSet {
    self.bindViewModelToController()
}}

var bindViewModelToController: (() -> Void) = {}

override init() {
    super.init()
    // Calling metgod to get data from url.
    callFuncToGetData()
}

// MARK: - Getting Data From Url

private func callFuncToGetData() {
    if let path =  Bundle.main.url(forResource: "cities", withExtension: "json") {
        do {
            // fetching file with conversion to Data.
            let data = try Data(contentsOf: path)
            let jsonDecoder = JSONDecoder()
            // Decoding data fetched to mapped in our Model
            let jsonData = try jsonDecoder.decode(DataList.self, from: data)
            self.jsonListData = jsonData
            } catch {
            print(error.localizedDescription)
            }
       }
   }
}
