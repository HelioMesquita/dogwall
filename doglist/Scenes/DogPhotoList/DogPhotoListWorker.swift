//
//  DogPhotoListWorker.swift
//  doglist
//
//  Created by Hélio Mesquita on 25/05/19.
//  Copyright (c) 2019 Hélio Mesquita. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import PromiseKit
import UIKit

class DogPhotoListWorker {

  let serviceProvider: ServiceProvider

  init(serviceProvider: ServiceProvider = ServiceProvider()) {
    self.serviceProvider = serviceProvider
  }

  func getPhotoList(session: Login.Session) -> Promise<DogPhotoList.Response> {
    let requestProvider = DogPhotoListProvider(session: session)
    return serviceProvider.execute(request: requestProvider, parser: DogPhotoList.Response.self)
  }

}
