<img src="./docs/icon.png" width="200">

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
  - Set screen brightness to max
  - Disable system main bar and bottom bar
  - Clearing cache on restart
  - Allowing for mic and camera usage from inside Webview for WebRTC stuff.
  - No overscroll and removing all safe browsing etc.

## Usage

If not, we can start by setting the consts

```
final webViewUrl = Uri.parse("https://excalidraw.com/");
final deviceOrienations = [DeviceOrientation.portraitUp];
const slackToken = '';
const slackChannel = '';
```

Also we can rename how the app looks on the home screen using [rename](https://pub.dev/packages/rename)

## Deployment

This can be deployed using Firebase App Distribution for both platforms, Testflight, or other similar services.

Debugging and other mishaps should be done with:

1. Analytics (An event is pushed with the current package info on Start)
2. Deploying a new version
3. Fixing the URL side of things

## Extending

If enabling with Firebase, we need to enable the Firebase project via Firebase CLI and Flutterfire.
More about this can be found [here]()

## More options in acccessibility

Set accessibility options to only use this app and remove lock

## The case for webview instead of PWA

<!-- https://www.tablesgenerator.com/markdown_tables -->

|         | native printing         | Documentation                                                                                         | Updating                                                                                      | Development                                              |
| ------- | ----------------------- | ----------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | -------------------------------------------------------- |
| pwa     | yes (based on versions) | iOS seems to have some undocumented functions between versions (see https://firt.dev/notes/pwa-ios/ ) | Requires updating the link with redirect                                                      | Need to adhere to PWA rules of platform (manifest, etc.) |
| webview | yes                     | More straightforward than pwa                                                                         | Can update app via TestFlight or other distribution for native or redirect inside the webview | Webview are more loosely integratable                    |
|         |                         |                                                                                                       |                                                                                               |                                                          |
