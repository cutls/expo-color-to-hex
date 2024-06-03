package expo.modules.colortohex

import android.R
import expo.modules.kotlin.modules.Module
import expo.modules.kotlin.modules.ModuleDefinition
import android.content.res.Resources
import android.graphics.Color
import android.content.Context


class ExpoColorToHexModule : Module() {
  override fun definition() = ModuleDefinition {
    Name("ExpoColorToHex")

    Function("getColor") { colorName: String ->
      val res: Resources = context.resources
      val colorId: Int = res.getIdentifier(colorName, "attr", context.packageName)
      val color: Int = if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.M) {
         res.getColor(colorId, null)
      } else {
         @Suppress("DEPRECATION")
         res.getColor(colorId)
      }
      val hexColor = String.format("#%06X", (0xFFFFFF and color))
      return@Function hexColor
      //return@Function "system"
    }
  }
  private val context
  get() = requireNotNull(appContext.reactContext)
}
