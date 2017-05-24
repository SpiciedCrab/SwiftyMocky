//
//  ItemsClient.swift
//  Mocky
//
//  Created by przemyslaw.wosko on 19/05/2017.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import Foundation
import RxSwift

protocol ItemsClient {
    func getExampleItems() -> Observable<[Item]>
    func getItemDetails(item: Item) -> Observable<ItemDetails>
}

class ConcreteItemsClient: ItemsClient {
    
    func getExampleItems() -> Observable<[Item]> {
        return Observable.just([])
    }
    
    func getItemDetails(item: Item) -> Observable<ItemDetails> {
        let itemDetails = ItemDetails(item: item, price: 90, description: [:])
        return Observable.just(itemDetails)
    }
    
}
