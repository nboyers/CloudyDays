//
//  Color+extensions.swift
//  CloudyDays
//
//  Created by Noah Boyers on 6/5/22.
//

import Foundation
import SwiftUI

extension Color {
    public static var lightBlue: Color {
        return Color(UIColor(red: 9/255, green: 213/255, blue: 205/255, alpha: 1.0))
    }
    public static var backgroundPrimary: Color {
        return Color(UIColor(red: 92/255, green: 24/255, blue: 178/255, alpha: 1.0))
    }
    public static var backgroundSecondary: Color {
        return Color(UIColor(red: 47/255, green: 45/255, blue: 169/255, alpha: 1.0))
    }
    public static var purpleButton: Color {
        return Color(UIColor(red: 149/255, green: 58/255, blue: 212/255, alpha: 1.0))
    }
    public static var accentButton: Color {
        return Color(UIColor(red: 40/255, green: 35/255, blue: 148/255, alpha: 1.0))
    }
}
