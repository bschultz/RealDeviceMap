// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: POGOProtos/Data/Logs/FortSearchLogEntry.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct POGOProtos_Data_Logs_FortSearchLogEntry {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var result: POGOProtos_Data_Logs_FortSearchLogEntry.Result = .unset

  var fortID: String = String()

  var items: [POGOProtos_Inventory_Item_ItemData] = []

  var eggs: Int32 = 0

  var pokemonEggs: [POGOProtos_Data_PokemonData] = []

  var fortType: POGOProtos_Map_Fort_FortType = .gym

  var awardedItems: [POGOProtos_Inventory_Item_ItemData] = []

  var bonusItems: [POGOProtos_Inventory_Item_ItemData] = []

  var teamBonusItems: [POGOProtos_Inventory_Item_ItemData] = []

  var giftBoxes: [POGOProtos_Data_Gift_GiftBox] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum Result: SwiftProtobuf.Enum {
    typealias RawValue = Int
    case unset // = 0
    case success // = 1
    case UNRECOGNIZED(Int)

    init() {
      self = .unset
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unset
      case 1: self = .success
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    var rawValue: Int {
      switch self {
      case .unset: return 0
      case .success: return 1
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  init() {}
}

#if swift(>=4.2)

extension POGOProtos_Data_Logs_FortSearchLogEntry.Result: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [POGOProtos_Data_Logs_FortSearchLogEntry.Result] = [
    .unset,
    .success,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "POGOProtos.Data.Logs"

extension POGOProtos_Data_Logs_FortSearchLogEntry: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".FortSearchLogEntry"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "result"),
    2: .standard(proto: "fort_id"),
    3: .same(proto: "items"),
    4: .same(proto: "eggs"),
    5: .standard(proto: "pokemon_eggs"),
    6: .standard(proto: "fort_type"),
    7: .standard(proto: "awarded_items"),
    8: .standard(proto: "bonus_items"),
    9: .standard(proto: "team_bonus_items"),
    10: .standard(proto: "gift_boxes"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularEnumField(value: &self.result)
      case 2: try decoder.decodeSingularStringField(value: &self.fortID)
      case 3: try decoder.decodeRepeatedMessageField(value: &self.items)
      case 4: try decoder.decodeSingularInt32Field(value: &self.eggs)
      case 5: try decoder.decodeRepeatedMessageField(value: &self.pokemonEggs)
      case 6: try decoder.decodeSingularEnumField(value: &self.fortType)
      case 7: try decoder.decodeRepeatedMessageField(value: &self.awardedItems)
      case 8: try decoder.decodeRepeatedMessageField(value: &self.bonusItems)
      case 9: try decoder.decodeRepeatedMessageField(value: &self.teamBonusItems)
      case 10: try decoder.decodeRepeatedMessageField(value: &self.giftBoxes)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.result != .unset {
      try visitor.visitSingularEnumField(value: self.result, fieldNumber: 1)
    }
    if !self.fortID.isEmpty {
      try visitor.visitSingularStringField(value: self.fortID, fieldNumber: 2)
    }
    if !self.items.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.items, fieldNumber: 3)
    }
    if self.eggs != 0 {
      try visitor.visitSingularInt32Field(value: self.eggs, fieldNumber: 4)
    }
    if !self.pokemonEggs.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.pokemonEggs, fieldNumber: 5)
    }
    if self.fortType != .gym {
      try visitor.visitSingularEnumField(value: self.fortType, fieldNumber: 6)
    }
    if !self.awardedItems.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.awardedItems, fieldNumber: 7)
    }
    if !self.bonusItems.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.bonusItems, fieldNumber: 8)
    }
    if !self.teamBonusItems.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.teamBonusItems, fieldNumber: 9)
    }
    if !self.giftBoxes.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.giftBoxes, fieldNumber: 10)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: POGOProtos_Data_Logs_FortSearchLogEntry, rhs: POGOProtos_Data_Logs_FortSearchLogEntry) -> Bool {
    if lhs.result != rhs.result {return false}
    if lhs.fortID != rhs.fortID {return false}
    if lhs.items != rhs.items {return false}
    if lhs.eggs != rhs.eggs {return false}
    if lhs.pokemonEggs != rhs.pokemonEggs {return false}
    if lhs.fortType != rhs.fortType {return false}
    if lhs.awardedItems != rhs.awardedItems {return false}
    if lhs.bonusItems != rhs.bonusItems {return false}
    if lhs.teamBonusItems != rhs.teamBonusItems {return false}
    if lhs.giftBoxes != rhs.giftBoxes {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension POGOProtos_Data_Logs_FortSearchLogEntry.Result: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNSET"),
    1: .same(proto: "SUCCESS"),
  ]
}