import ExpoModulesCore
import UIKit

public class ExpoColorToHexModule: Module {
  public func definition() -> ModuleDefinition {
    Name("ExpoColorToHex")

    Function("getColor") { (colorName: String) -> String in
      guard let color = getColorByName(colorName) else {
        return "Color not found: " + colorName
      }

      return color.toHexString()
    }
  }
  private func getColorByName(_ colorName: String) -> UIColor? {
    switch colorName {
      case "systemRed": return UIColor.systemRed
      case "systemBlue": return UIColor.systemBlue
      case "systemFreen": return UIColor.systemGreen
      case "systemOrange": return UIColor.systemOrange
      case "systemYellow": return UIColor.systemYellow
      case "systemPink": return UIColor.systemPink
      case "systemPurple": return UIColor.systemPurple
      case "systemTeal": return UIColor.systemTeal
      case "systemIndigo": return UIColor.systemIndigo
      case "systemGreen": return UIColor.systemGreen
      case "systemGray": return UIColor.systemGray
      case "systemGray2": return UIColor.systemGray2
      case "systemGray3": return UIColor.systemGray3
      case "systemGray4": return UIColor.systemGray4
      case "systemGray5": return UIColor.systemGray5
      case "systemGray6": return UIColor.systemGray6
      // Add more cases as needed
      default: return nil
    }
  }
}
extension UIColor {
  func toHexString() -> String {
    var red: CGFloat = 0
    var green: CGFloat = 0
    var blue: CGFloat = 0
    var alpha: CGFloat = 0

    getRed(&red, green: &green, blue: &blue, alpha: &alpha)

    let rgb: Int = (Int)(red*255)<<16 | (Int)(green*255)<<8 | (Int)(blue*255)<<0

    return String(format: "#%06x", rgb)
  }
}
