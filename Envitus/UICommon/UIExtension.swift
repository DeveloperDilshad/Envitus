//
//  UIExtension.swift
//  Envitus
//
//  Created by Dilshad P on 20/01/25.
//

import SwiftUI

extension Color {
    /// Primary color defined using the hex value.
    static var primary: Color {
        return Color(hex: "#151414")
    }
    
    /// Initialize a SwiftUI Color from a hexadecimal string.
    /// Supports 3 (RGB), 6 (RRGGBB), and 8 (AARRGGBB) character formats.
    init(hex: String) {
        // Clean the input by removing the # prefix and trimming whitespaces
        let cleanedHex = hex.trimmingCharacters(in: .whitespacesAndNewlines)
                            .replacingOccurrences(of: "#", with: "")
        
        var int: UInt64 = 0
        
        // Ensure the hex string is valid
        guard Scanner(string: cleanedHex).scanHexInt64(&int) else {
            // Default to white color if the hex string is invalid
            self.init(.sRGB, red: 1.0, green: 1.0, blue: 1.0, opacity: 1.0)
            return
        }
        
        let a, r, g, b: UInt64
        switch cleanedHex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default: // Invalid format
            (a, r, g, b) = (255, 255, 255, 255)
        }
        
        self.init(
            .sRGB,
            red: Double(r) / 255.0,
            green: Double(g) / 255.0,
            blue: Double(b) / 255.0,
            opacity: Double(a) / 255.0
        )
    }
}



