//
//  Constants.swift
//  JardamBeremApp
//
//  Created by Ulan Nurmatov on 7/30/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import Foundation

struct Constants {
    let termsOfReferense = "Данная Политика конфиденциальности и защиты персональных данных (далее - «Политика») устанавливает порядок осуществления Компанией обработки персональных данных, виды собираемых персональных данных, цели использования таких персональных данных, взаимодействие Компании с третьими лицами, меры безопасности для защиты персональных данных, условия доступа к персональным данным, а также контактную информацию для пользователя относительно получения доступа, внесения изменений, блокирования или удаления своих персональных данных и обращения с любыми вопросами, которые могут возникнуть у Вас относительно практики защиты персональных данных."
    struct Network{
        struct EndPoint {
            static let cities = "cities/"
            static let categories = "api/categories/"
            static let charities = "charity_event/"
            static let forum = "forum/"
            static let announcements = "api/categories/"
            static let reviewPost = "review/"
        }
        
        struct ErrorMessage {
            static let NO_INTERNET_CONNECTION = "No internet connection"
            static let UNABLE_LOAD_DATA = "Unable load data"
            static let NO_HTTP_STATUS_CODE = "Unable to get response HTTP status code"
            static let UNAUTHORIZED = "Unauthorized error"
        }
    }
}
