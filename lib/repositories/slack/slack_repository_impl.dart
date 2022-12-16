import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jaybird/consts.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:slack_notifier/slack_notifier.dart';

part 'slack_repository_impl.freezed.dart';

@freezed
class SlackRepositoryImpl with _$SlackRepositoryImpl {
  const factory SlackRepositoryImpl({
    required SlackNotifier slackNotifier,
  }) = _SlackRepositoryImpl;

  const SlackRepositoryImpl._();

  sendStartup() async {
    final title = HeaderBlock(text: 'Startup');

    return slackNotifier
        .send('Startup!', channel: slackChannel, blocks: [title]);
  }

  sendError() async {
    final title = HeaderBlock(text: 'Error / Inactive');

    return slackNotifier.send('Error', channel: slackChannel, blocks: [title]);
  }
}

final slackRepositoryProvider = Provider((ref) {
  return SlackRepositoryImpl(slackNotifier: ref.watch(slackNotifierProvider));
});

final slackNotifierProvider = Provider((ref) {
  return SlackNotifier(slackToken);
});
