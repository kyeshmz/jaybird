// Package imports:

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;
import 'package:jaybird/consts.dart';

part 'slack_webhook_repository_impl.freezed.dart';

@freezed
class SlackWebhookRepositoryImpl with _$SlackWebhookRepositoryImpl {
  const factory SlackWebhookRepositoryImpl() = _SlackWebhookRepositoryImpl;

  const SlackWebhookRepositoryImpl._();

  Future<void> sendToSlack() async {
    try {
      final response = await http.post(slackWebHookURL);
      final json = jsonDecode(response.body);
      final jsonResult = json['result'] as Map<String, dynamic>;
    } on Exception {
// we write something to crashlytics here.
    }
  }
}
