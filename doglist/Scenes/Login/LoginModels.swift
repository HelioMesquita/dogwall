//
//  LoginModels.swift
//  doglist
//
//  Created by Hélio Mesquita on 24/05/19.
//  Copyright (c) 2019 Hélio Mesquita. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

enum Login {

  struct BodyRequest: Encodable {
    var email: String
  }

  struct Response: Decodable {
    let user: User
  }

  struct User: Decodable {
    let id: String
    let email: String
    let token: String
    let createdAt: String
    let updatedAt: String

    enum CodingKeys: String, CodingKey {
      case id = "_id"
      case email
      case token
      case createdAt
      case updatedAt
    }
  }

  class Session {

    let token: String
    var breed: DogBreedsList.Breeds = .husky

    init(token: String) {
      self.token = token
    }
  }

}
