# Green Grocery

Yet an another iOS app created using VIPER architecture.

Source Code of the App I coded after/while watching [this](https://www.youtube.com/watch?v=TE6s8Zw3Gv8) playlist.

I built the app in iOS 15.

What that means is, in the video, for the `initialViewController`,
he changes stuff in `AppDelegate.Swift`, but I changed stuff in
`SceneDelegate.Swift`.

##### Reason for that

From iOS 13, if your application has scenes, then AppDelegate is no longer
responsible for handling this and is moved to SceneDelegate.
