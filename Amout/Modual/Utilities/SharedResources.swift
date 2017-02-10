//
//  SharedResources.swift
//  Amout
//
//  Created by sok channy on 2/1/17.
//  Copyright © 2017 channy-origin. All rights reserved.
//

import Foundation

public enum SegueIdentifier : String {
    case main           = "mainSegue"
    case createHome     = "createHomeSegue"
    case editProfile    = "editProfile"
    case login          = "loginSegue"
}

public enum CellIdentifier : String {
    case notificationCell   = "notificationCell"
    case houseCell          = "houseCell"
    case userCollectionCell = "homeUserCell"
    case popupCell = "popupCell"
}

public enum StoryBoard : String {
    case main  = "Main"
    case popup  = "Popup"
}

public enum VCIdentifier : String {
    case popUp = "PopupViewController"
}

public enum SharedString : String {
    case googleMapAPIKey = "AIzaSyBoukXWkmNu7I3NnF4HjYm0HVbjvumnEck"
}

//public enum NotificationCenterName : NotificationN {
    
//}
