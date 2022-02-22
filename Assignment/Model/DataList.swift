import Foundation

struct JsonListData: Codable {

// MARK: - mapping the data fetched from rows.

var id: Int?
var name: String?
var state: String?

// MARK: - coding keys enumeration.

enum CodingKeys: String, CodingKey {
     case id
     case name
     case state
}

// MARK: - decoding values.

init(from decoder: Decoder) throws {
     let values = try decoder.container(keyedBy: CodingKeys.self)
     id = try values.decode(Int?.self, forKey: .id)
     name = try values.decode(String?.self, forKey: .name)
     state = try values.decode(String?.self, forKey: .state)
 }
}

// MARK: - Modelling Struct.

struct DataList: Codable {
     var rows: [JsonListData]
}
