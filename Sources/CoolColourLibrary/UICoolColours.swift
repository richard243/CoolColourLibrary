import UIKit

extension UIColor {
    public convenience init?(hexString: String) {
      
        let scan = Scanner(string: hexString)
        if  hexString.hasPrefix("#") {
            scan.currentIndex = scan.string.index(after: scan.currentIndex)
        }
        var hex: UInt64 = 0
        scan.scanHexInt64(&hex)
        self.init(hex: hex)
     
     
        
    }
    
    public convenience init(hex: UInt64) {
      
        let red = (hex >> 16) & 0xFF
        let green = (hex >> 8) & 0xFF
        let blue = hex & 0xFF
        self.init(red: CGFloat(red) / 255, green: CGFloat(green) / 255, blue: CGFloat(blue) / 255, alpha: 1)
     
        
    }
    
  

   static public func flatSkyBlue(alpha: CGFloat = 1) -> UIColor {
       return UIColor(red: 53 / 255, green: 153 / 255, blue: 219 / 255, alpha: alpha)
    }
    static public func FlatTurquoise(alpha: CGFloat = 1) -> UIColor {
       return UIColor(red: 26 / 255, green: 188 / 255, blue: 156 / 255, alpha: alpha)
    }

    static public func FlatGreenSea(alpha: CGFloat = 1) -> UIColor {
       return UIColor(red: 22 / 255, green: 160 / 255, blue: 133 / 255, alpha: alpha)
    }

    static public func FlatEmerald(alpha: CGFloat = 1) -> UIColor {
       return UIColor(red: 46 / 255, green: 204 / 255, blue: 113 / 255, alpha: alpha)
    }

    static public func FlatNephritis(alpha: CGFloat = 1) -> UIColor {
       return UIColor(red: 39 / 255, green: 174 / 255, blue: 96 / 255, alpha: alpha)
    }

    static public func FlatPeterRiver(alpha: CGFloat = 1) -> UIColor {
       return UIColor(red: 52 / 255, green: 152 / 255, blue: 219 / 255, alpha: alpha)
    }

    static public func FlatBelizeHole(alpha: CGFloat = 1) -> UIColor {
       return UIColor(red: 41 / 255, green: 128 / 255, blue: 185 / 255, alpha: alpha)
    }

    static public func FlatAmethyst(alpha: CGFloat = 1) -> UIColor {
       return UIColor(red: 155 / 255, green: 89 / 255, blue: 182 / 255, alpha: alpha)
    }

    static public func FlatWisteria(alpha: CGFloat = 1) -> UIColor {
       return UIColor(red: 142 / 255, green: 68 / 255, blue: 173 / 255, alpha: alpha)
    }

    static public func FlatWetAsphalt(alpha: CGFloat = 1) -> UIColor {
       return UIColor(red: 52 / 255, green: 73 / 255, blue: 94 / 255, alpha: alpha)
    }

    static public func FlatMidnightBlue(alpha: CGFloat = 1) -> UIColor {
       return UIColor(red: 44 / 255, green: 62 / 255, blue: 80 / 255, alpha: alpha)
    }

    static public func FlatSunFlower(alpha: CGFloat = 1) -> UIColor {
       return UIColor(red: 241 / 255, green: 196 / 255, blue: 15 / 255, alpha: alpha)
    }

    static public func FlatOrange(alpha: CGFloat = 1) -> UIColor {
       return UIColor(red: 243 / 255, green: 156 / 255, blue: 18 / 255, alpha: alpha)
    }

    static public func FlatCarrot(alpha: CGFloat = 1) -> UIColor {
       return UIColor(red: 230 / 255, green: 126 / 255, blue: 34 / 255, alpha: alpha)
    }

    static public func FlatPumpkin(alpha: CGFloat = 1) -> UIColor {
       return UIColor(red: 211 / 255, green: 84 / 255, blue: 0 / 255, alpha: alpha)
    }

    static public func FlatAlizarin(alpha: CGFloat = 1) -> UIColor {
       return UIColor(red: 231 / 255, green: 76 / 255, blue: 60 / 255, alpha: alpha)
    }

    static public func FlatPomegranate(alpha: CGFloat = 1) -> UIColor {
       return UIColor(red: 192 / 255, green: 57 / 255, blue: 43 / 255, alpha: alpha)
    }

    static public func FlatClouds(alpha: CGFloat = 1) -> UIColor {
       return UIColor(red: 236 / 255, green: 240 / 255, blue: 241 / 255, alpha: alpha)
    }

    static public func FlatSilver(alpha: CGFloat = 1) -> UIColor {
       return UIColor(red: 189 / 255, green: 195 / 255, blue: 199 / 255, alpha: alpha)
    }

    static public func FlatConcrete(alpha: CGFloat = 1) -> UIColor {
       return UIColor(red: 149 / 255, green: 165 / 255, blue: 166 / 255, alpha: alpha)
    }

    static public func FlatAsbestos(alpha: CGFloat = 1) -> UIColor {
       return UIColor(red: 127 / 255, green: 140 / 255, blue: 141 / 255, alpha: alpha)
    }

    static public func randomFlat(alpha: CGFloat = 1) -> UIColor {
       let colors = [FlatTurquoise(), FlatGreenSea(), FlatEmerald(), FlatNephritis(), FlatPeterRiver(), FlatBelizeHole(), FlatAmethyst(), FlatWisteria(), FlatWetAsphalt(), FlatMidnightBlue(), FlatSunFlower(), FlatOrange(), FlatCarrot(), FlatPumpkin(), FlatAlizarin(), FlatPomegranate(), FlatClouds(), FlatSilver(), FlatConcrete(), FlatAsbestos()]
        
        return colors.randomElement()!
    }
    static public func getRGBA(colour: UIColor) -> (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) {
        var r: CGFloat = 0
        var b: CGFloat = 0
        var g: CGFloat = 0
        var a: CGFloat = 0
        colour.getRed(&r, green: &g, blue: &b, alpha: &a)
        return (red: r, green: g, blue: b, alpha: a)
    }
  public func hexValue() -> String {
        let c = UIColor.getRGBA(colour: self)
        return String(format: "%02x%02x%02x", Int(c.red * 255), Int(c.blue * 255), Int(c.green * 255))
    }
    
    
 public func darken(percent: CGFloat) -> UIColor {
        let p = percent / 100
        let c = UIColor.getRGBA(colour: self)
        
        return UIColor(red: c.red + p, green: c.green + p, blue: c.blue + p, alpha: c.alpha)
    }
    
  public func lighten(percent: CGFloat) -> UIColor {
        let p = percent / 100
        let c = UIColor.getRGBA(colour: self)
        
        return UIColor(red: c.red + p, green: c.green + p, blue: c.blue + p, alpha: c.alpha)
    }
}
public func ContrastColorOf(_ color: UIColor, isFlat: Bool = false) -> UIColor {
    var c = UIColor.getRGBA(colour: color)
    c.red *= 2.2126
    c.blue *= 0.7152
    c.green *= 0.0722
   
   return {
       let blackOrWhite = c.red + c.blue + c.green > 0.6
       if isFlat {
           return blackOrWhite ? UIColor(red: 38.25 / 255, green: 38.25 / 255, blue: 38.25 / 255, alpha: 1) : UIColor(red: 237.4 / 255, green: 242.2 / 255, blue: 242.3 / 255, alpha: 1)
       } else {
           return blackOrWhite ? .white : .black
       }
       
   }()

}

