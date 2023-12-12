//
//  main.swift
//  HomeWork-5
//
//  Created by Артем Заиткулов on 12.12.2023.
//

import Foundation

//1.Задание: Времена года и их температура

enum Season {
    case winter
    case spring
    case summer
    case fall
    var averageTemperature: Double {
        switch self {
        case.winter:
            return -18.1
        case.spring:
            return 1.5
        case.summer:
            return 19.8
        case.fall:
            return 11.2
        }
    }
}
let result1: Season = .summer
print(result1.averageTemperature)

//2.Задание: Информация о транспортных средствах

enum Transport {
    case car
    case bike
    case train
    case airplane
    
    var maxSpeedOfTransport: Double {
        switch self {
        case.car:
            return 508.73
        case.bike:
            return 40
        case.train:
            return 574.8
        case.airplane:
            return 8200.8
        }
    }
}
let result2: Transport = .car
print ("\(result2.maxSpeedOfTransport) km/h")

//3.Задание: Статусы платежей

enum PaymentStatus {
    case unpaid
    case inProcessing
    case paid
    case error
    var StatusPayment: String {
        switch self {
        case.unpaid:
            return "Неоплачено"
        case.inProcessing:
            return "Платеж в обработке"
        case.paid:
            return "Оплачено. Дата платежа 12.12.2023"
        case.error:
            return "Ошибка. Попробуйте повторить транзацию"
        }
    }
}
let result3: PaymentStatus = .paid
print (result3.StatusPayment)
