# jaybird

A basic webview wrapper app for installation work, built with Flutter.

As this intends to be used in an installation, all bumpers are removed and all trust is put onto the Artist about ways people can abuse this App.
This app will probably never make it to the App Store.

Some key features are:

- Has abilities to have analytics if the app crashed, etc. (via Firebase Crashlytics)
- Ways of figuring out which version and URL is set for installation staff to figure out.
- Has wakelock enabled to always have the screen on
- Opinionated of how apps are managed:
  - Disallowing zoom
  - No gesture for going to and from pages
  - Clearing cache on restart
  - Allowing for mic and camera usage from inside Webview for WebRTC stuff.
  - No overscroll and removing all safe browsing etc.

## Usage

If enabling with Firebase, we need to enable the Firebase project via Firebase CLI and Flutterfire.
More about this can be found [here]()

If not, we can start by setting the consts

## Deployment

This can be deployed using Firebase App Distribution for both platforms, Testflight, or other similar services.

Debugging and other mishaps should be done with:

1. Analytics (An event is pushed with the current package info on Start)
2. Deploying a new version
3. Fixing the URL side of things
