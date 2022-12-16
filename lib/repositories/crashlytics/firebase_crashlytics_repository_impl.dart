import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'firebase_crashlytics_repository_impl.freezed.dart';

@freezed
class FirebaseCrashlyticsRepositoryImpl
    with _$FirebaseCrashlyticsRepositoryImpl {
  const factory FirebaseCrashlyticsRepositoryImpl({
    required FirebaseCrashlytics firebaseCrashlytics,
  }) = _FirebaseCrashlyticsRepositoryImpl;
  const FirebaseCrashlyticsRepositoryImpl._();
}

final firebaseCrashlyticsProvider = Provider((ref) {
  return FirebaseCrashlytics.instance;
});

final firebaseCrashlyticsRepositoryProvider = Provider((ref) {
  return FirebaseCrashlyticsRepositoryImpl(
    firebaseCrashlytics: ref.watch(firebaseCrashlyticsProvider),
  );
});
