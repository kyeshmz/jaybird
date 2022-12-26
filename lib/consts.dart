import 'package:flutter/services.dart';

final adUrlFilters = [
  ".*.doubleclick.net/.*",
  ".*.ads.pubmatic.com/.*",
  ".*.googlesyndication.com/.*",
  ".*.google-analytics.com/.*",
  ".*.adservice.google.*/.*",
  ".*.adbrite.com/.*",
  ".*.exponential.com/.*",
  ".*.quantserve.com/.*",
  ".*.scorecardresearch.com/.*",
  ".*.zedo.com/.*",
  ".*.adsafeprotected.com/.*",
  ".*.teads.tv/.*",
  ".*.outbrain.com/.*"
];
bool isFirebaseEnabled = false;

// include https://
final webViewUrl = Uri.parse("https://excalidraw.com/");
// this value should either be
// DeviceOrientation.landscapeLeft (meaning that the volume is on top)
// or
// DeviceOrientation.portraitUp (meaning that the lock button is on top)
// final deviceOrienations = [DeviceOrientation.landscapeLeft];
final deviceOrienations = [DeviceOrientation.portraitUp];
const slackToken = '';
const slackChannel = '';
