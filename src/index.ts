import { Platform } from "react-native";

import ExpoColorToHexModule from "./ExpoColorToHexModule";

type ColorName =
  | "systemRed"
  | "systemBlue"
  | "systemFreen"
  | "systemOrange"
  | "systemYellow"
  | "systemPink"
  | "systemPurple"
  | "systemTeal"
  | "systemIndigo"
  | "systemGreen"
  | "systemGray"
  | "systemGray2"
  | "systemGray3"
  | "systemGray4"
  | "systemGray5"
  | "systemGray6";

export function getColorIOS(colorName: ColorName): string | null {
  if (Platform.OS !== "ios") return null;
  return ExpoColorToHexModule.getColor(colorName);
}
export function getColorAndroid(colorName: string): string | null {
  if (Platform.OS !== "android") return null;
  return ExpoColorToHexModule.getColor(colorName);
}
