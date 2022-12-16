import 'package:jaybird/repositories/slack/slack_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final notifyProvider = Provider((ref) {
  ref.watch(slackRepositoryProvider).sendStartup();
});
