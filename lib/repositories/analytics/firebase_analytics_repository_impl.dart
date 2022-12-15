import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'firebase_analytics_repository_impl.freezed.dart';

@freezed
class FirebaseAnalyticsRepositoryImpl with _$FirebaseAnalyticsRepositoryImpl {
  const factory FirebaseAnalyticsRepositoryImpl({
    required FirebaseAnalytics faInstance,
  }) = _FirebaseAnalyticsRepositoryImpl;
  const FirebaseAnalyticsRepositoryImpl._();
}

final firebaseAnalyticsProvider = Provider((ref) {
  return FirebaseAnalytics.instance;
});

final firebaseAnalyticsRepositoryProvider = Provider((ref) {
  return FirebaseAnalyticsRepositoryImpl(
    faInstance: ref.watch(firebaseAnalyticsProvider),
  );
});
