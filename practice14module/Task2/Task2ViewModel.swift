//
//  Task2ViewModel.swift
//  practice14module
//
//  Created by Максим Морозов on 15.12.2023.
//

import Foundation

struct NewsRecordModel {
    let title: String
    let publishedAt: String
}

struct NewsDataModel {
    let title: String
    let publishedDate: Date
}

struct NewsSectionModel {
    let headerTitle: Data
    let cell: [NewsDataModel]
}

struct CellsData {
    let header: Date
    let text: [NewsDataModel]
}
