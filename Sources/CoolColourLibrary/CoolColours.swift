//
//  ColourFramework.swift
//  AColourFramework
//
//  Created by Richard Sabbage on 17/06/2023.
//

import SwiftUI

extension Color {
  public init?(hexString: String) {
        var colorStr = hexString
      let scan = Scanner(string: hexString)
      if  hexString.hasPrefix("#") {
          scan.currentIndex = scan.string.index(after: scan.currentIndex)
      }
      var hex: UInt64 = 0
      scan.scanHexInt64(&hex)
      self.init(hex: hex)
     
     
        
    }
    
   public init(hex: UInt64) {
      
        let red = (hex >> 16) & 0xFF
        let green = (hex >> 8) & 0xFF
        let blue = hex & 0xFF
        self.init(red: CGFloat(red / 255), green: CGFloat(green / 255), blue: CGFloat(blue / 255))
     
        
    }
    
  

   static func flatSkyBlue() -> Color {
       return Color(red: 53 / 255, green: 153 / 255, blue: 219 / 255)
    }
    static func FlatTurquoise() -> Color {
       return Color(red: 26 / 255, green: 188 / 255, blue: 156 / 255)
    }

    static func FlatGreenSea() -> Color {
       return Color(red: 22 / 255, green: 160 / 255, blue: 133 / 255)
    }

    static func FlatEmerald() -> Color {
       return Color(red: 46 / 255, green: 204 / 255, blue: 113 / 255)
    }

    static func FlatNephritis() -> Color {
       return Color(red: 39 / 255, green: 174 / 255, blue: 96 / 255)
    }

    static func FlatPeterRiver() -> Color {
       return Color(red: 52 / 255, green: 152 / 255, blue: 219 / 255)
    }

    static func FlatBelizeHole() -> Color {
       return Color(red: 41 / 255, green: 128 / 255, blue: 185 / 255)
    }

    static func FlatAmethyst() -> Color {
       return Color(red: 155 / 255, green: 89 / 255, blue: 182 / 255)
    }

    static func FlatWisteria() -> Color {
       return Color(red: 142 / 255, green: 68 / 255, blue: 173 / 255)
    }

    static func FlatWetAsphalt() -> Color {
       return Color(red: 52 / 255, green: 73 / 255, blue: 94 / 255)
    }

    static func FlatMidnightBlue() -> Color {
       return Color(red: 44 / 255, green: 62 / 255, blue: 80 / 255)
    }

    static func FlatSunFlower() -> Color {
       return Color(red: 241 / 255, green: 196 / 255, blue: 15 / 255)
    }

    static func FlatOrange() -> Color {
       return Color(red: 243 / 255, green: 156 / 255, blue: 18 / 255)
    }

    static func FlatCarrot() -> Color {
       return Color(red: 230 / 255, green: 126 / 255, blue: 34 / 255)
    }

    static func FlatPumpkin() -> Color {
       return Color(red: 211 / 255, green: 84 / 255, blue: 0 / 255)
    }

    static func FlatAlizarin() -> Color {
       return Color(red: 231 / 255, green: 76 / 255, blue: 60 / 255)
    }

    static func FlatPomegranate() -> Color {
       return Color(red: 192 / 255, green: 57 / 255, blue: 43 / 255)
    }

    static func FlatClouds() -> Color {
       return Color(red: 236 / 255, green: 240 / 255, blue: 241 / 255)
    }

    static func FlatSilver() -> Color {
       return Color(red: 189 / 255, green: 195 / 255, blue: 199 / 255)
    }

    static func FlatConcrete() -> Color {
       return Color(red: 149 / 255, green: 165 / 255, blue: 166 / 255)
    }

    static func FlatAsbestos() -> Color {
       return Color(red: 127 / 255, green: 140 / 255, blue: 141 / 255)
    }

    static func randomFlat() -> Color {
       let colors = [FlatTurquoise(), FlatGreenSea(), FlatEmerald(), FlatNephritis(), FlatPeterRiver(), FlatBelizeHole(), FlatAmethyst(), FlatWisteria(), FlatWetAsphalt(), FlatMidnightBlue(), FlatSunFlower(), FlatOrange(), FlatCarrot(), FlatPumpkin(), FlatAlizarin(), FlatPomegranate(), FlatClouds(), FlatSilver(), FlatConcrete(), FlatAsbestos()]
        
        return colors.randomElement()!
    }
    static func getRGBA(colour: Color) -> (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) {
        var r: CGFloat = 0
        var b: CGFloat = 0
        var g: CGFloat = 0
        var a: CGFloat = 0
        
        UIColor(colour).getRed(&r, green: &g, blue: &b, alpha: &a)
        return (red: r, green: g, blue: b, alpha: a)
    }
    func hexValue() -> String {
        let c = Color.getRGBA(colour: self)
        return String(format: "%02x%02x%02x", Int(c.red * 255), Int(c.blue * 255), Int(c.green * 255))
    }
    
    
   public func darken(percent: CGFloat) -> Color {
        let p = percent / 100
        let c = Color.getRGBA(colour: self)
        
        return Color(red: c.red + p, green: c.green + p, blue: c.blue + p)
    }
    
    public func lighten(percent: CGFloat) -> Color {
        let p = percent / 100
        let c = Color.getRGBA(colour: self)
        
        return Color(red: c.red + p, green: c.green + p, blue: c.blue + p)
    }
}
public func ContrastColorOf(_ color: Color, isFlat: Bool = false) -> Color {
    var c = Color.getRGBA(colour: color)
    c.red *= 2.2126
    c.blue *= 0.7152
    c.green *= 0.0722
   
   return {
       let blackOrWhite = c.red + c.blue + c.green > 0.6
       if isFlat {
           return blackOrWhite ? Color(red: 38.25, green: 38.25, blue: 38.25 / 255) : Color(red: 237.4 / 255, green: 242.2 / 255, blue: 242.3 / 255)
       } else {
           return blackOrWhite  ?  .white : .black
       }
       
   }()

}
