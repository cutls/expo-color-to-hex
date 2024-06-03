import * as ColorToHex from 'expo-color-to-hex';
import { Text, View } from 'react-native';

export default function App() {
  // For iOS
  const iosColor = ColorToHex.getColorIOS('systemBlue') || '#000'
  return (
    <View style={{ flex: 1, alignItems: 'center', justifyContent: 'center', backgroundColor: iosColor }}>
      <Text>Theme: {iosColor}</Text>
    </View>
  );
}
