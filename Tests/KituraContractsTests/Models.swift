/**
 * Copyright IBM Corporation 2017
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 **/

import KituraContracts

//extension Persistable {
//    // create
//    static func create(model: Self, respondWith: @escaping (Self?, RequestError?) -> Void) {
//       // dummy implementation
//    }
//
//    // read
//    static func read(id: Id, respondWith: @escaping (Self?, RequestError?) -> Void) {
//        // dummy implementation
//    }
//
//    // read all
//    static func read(respondWith: @escaping ([Self]?, RequestError?) -> Void) {
//        // dummy implementation
//    }
//
//    // update
//    static func update(id: Id, model: Self, respondWith: @escaping (Self?, RequestError?) -> Void) {
//        // dummy implementation
//    }
//
//    // delete
//    static func delete(id: Id, respondWith: @escaping (RequestError?) -> Void) {
//        // dummy implementation
//    }
//
//    // delete all
//    static func delete(respondWith: @escaping (RequestError?) -> Void) {
//        // dummy implementation
//    }
//}

struct User: Codable {
    let id: String
    let name: String
}

struct Status: Codable, Equatable {
    enum Value: String, Codable {
        case OK
        case BROKEN
    }
    let value: Value

    public static func ==(lhs: Status, rhs: Status) -> Bool {
        return lhs.value == rhs.value
    }
}

//extension User: Persistable {
//    public typealias Id = Int
//}

