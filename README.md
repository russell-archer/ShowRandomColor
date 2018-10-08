# ShowRandomColor
**Demo of Siri shortcuts for iOS 12 using Intents**

See my blog for details on how to create the demo app: https://rarchersoftware.com/siri-shortcuts-intents/

## Overview of how to implement Siri shortcuts
There are two approaches to creating Siri shortcuts:

**NSUserActivity**
* Simple to implement
* Open your app and trigger an action via a shortcut or Hey Siri phrase
* Little customisation

**Intents**
* More complex than NSUserActivity
* You can customise the experience for the user
* Open an app extension in Siri via a Hey Siri phrase
* Include custom responses from Siri and a custom UI that Siri will present

In this app we use the Intents-based approach. 
See also https://github.com/russell-archer/PicSearch for an example using an NSUserActivity-based approach.

## Overview of the demo app
This is a demo app that allows the user to request a random color. 
The color can be displayed either:

* In the ShowRandomColor app, or
* By tapping on a Siri shortcut (color is displayed in Siri via an app extension)
* Via a Hey Siri phrase (color is displayed in Siri via an app extension)
