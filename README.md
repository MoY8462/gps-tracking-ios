# GPS Tracking
Esta aplicación se encuentra desarrollada  junto con firebase y google maps, es por ello que para se necesitará cocoa pods para su ejecución.
**Inicializar Cocoa Pods**
> pod init
## Podfile
~~~
# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'gps-tracking' do
# Comment the next line if you don't want to use dynamic frameworks
use_frameworks!
# Pods for gps-tracking
pod 'GoogleMaps', '4.0.0'
# Add the Firebase pod for Google Analytics
# Add the Firebase pod for Google Analytics
pod 'FirebaseAnalytics'

# For Analytics without IDFA collection capability, use this pod instead
# pod ‘Firebase/AnalyticsWithoutAdIdSupport’

# Add the pods for any other Firebase products you want to use in your app
# For example, to use Firebase Authentication and Cloud Firestore
pod 'Firebase'
pod 'FirebaseAuth'
pod 'FirebaseFirestore'
end 
~~~
**Instalamos las dependencias**
> pod install
> 
**Listo, podemos ejecutar la app.**

