// import 'package:battery_plus/battery_plus.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:package_info_plus/package_info_plus.dart';

// part 'packageinfo_repository_impl.freezed.dart';

// @freezed
// class PackageInfoRepositoryImpl with _$PackageInfoRepositoryImpl {
//   const factory PackageInfoRepositoryImpl({
//     required PackageInfo packageInfo,
//   }) = _PackageInfoRepositoryImpl;

//   const PackageInfoRepositoryImpl._();
// }

// final packageInfoProvider = FutureProvider((ref) async {
//   return await PackageInfo.fromPlatform();
// });

// final packageInfoRepositoryProvider = Provider((ref) {
//   final packageInfo  =  ref.watch(packageInfoProvider).whenData
//   return PackageInfoRepositoryImpl(packageInfo: ref.watch(pack));
// });
