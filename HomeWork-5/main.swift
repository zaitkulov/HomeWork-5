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

//4.Задание: Рекомендации по режимам камеры

enum CameraMode {
    case auto
    case portrait
    case landscape
    case nightly
    var ChoiceCameraMode: String {
        switch self {
        case.auto:
            return "Автоматический. Полностью автоматический режим съемки. Фотокамера по программе, в зависимости от текущих условий освещения будет решать сама, какую экспопару подобрать."
        case.portrait:
            return "Портрет. В этом режиме камера старается выставить диафрагму объектива на максимально открытое значение, так как это позволяет отлично отделять объект съемки от фона."
        case.landscape:
            return "Ландшафт. В ландшафтной фотосъемке используется большая глубина резкости (значения диафрагмы от f/5,6) при выдержке, равной не меньше 1/фокусного расстояния объектива."
        case.nightly:
            return "Ночной. Длинная выдержка на открытой диафрагме и высоком значении ISO. Из-за возможной тряски лучше использовать стабилизацию (штатив, и т.п.)"
        }
    }
}
let result4: CameraMode = .nightly
print (result4.ChoiceCameraMode)

//5.Задание: Диеты Животных в зоопарке

enum AnimalType {
    case predator
    case herbivore
    case insect
    var diet: String {
        switch self {
        case.predator:
            return "Хищники устроены-настроены природой не на растительную пищу, а на пищу животную. Они кушают других животных"
        case.herbivore:
            return "Травоядные питаются частями деревьев и различными растениями"
        case.insect:
            return "Одни насекомые питаются растениями (корни, стебли, листья), семенами, фруктами, вторые (хищные насекомые) питаются другими насекомыми"
        }
    }
}
let result5: AnimalType = .insect
print (result5.diet)

//6.Задание: Статус заказа в ресторане

enum OrderStatus: String {
    case received
    case prepared = "Готовится"
    case readyToServe = "Готов к выдаче"
    case delivered = "Доставляется"
    
    var nextStatus: String {
        switch self {
        case.received:
            return "Следующий статус: \(OrderStatus.prepared.rawValue)"
        case.prepared:
            return "Следующий статус: \(OrderStatus.readyToServe.rawValue)"
        case.readyToServe:
            return "Следующий статус: \(OrderStatus.delivered.rawValue)"
        case.delivered:
            return ""
        }
    }
}
let result6: OrderStatus = .prepared
print (result6.nextStatus)

//7.Задание: Информация о номерах в отеле

enum RoomType {
    case singleRoom
    case doubleRoom
    case luxuryRoom

    var price: Int {
        switch self {
        case .singleRoom:
            return 100
        case .doubleRoom:
            return 500
        case .luxuryRoom:
            return 1000
        }
    }

    var numberOfAvailable: Int {
        switch self {
        case .singleRoom:
            return 7
        case .doubleRoom:
            return 4
        case .luxuryRoom:
            return 2
        }
    }
}

let result7: RoomType = .luxuryRoom
print(result7.price)
print(result7.numberOfAvailable)



