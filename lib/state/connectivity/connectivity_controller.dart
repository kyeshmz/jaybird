// import 'package:hooks_riverpod/hooks_riverpod.dart';

// import 'fcs_state.dart';

// class FCSController extends StateNotifier<FcsState> {
//   FCSController({required this.ref, required this.fcmRepository})
//       : super(
//           const FcsState(),
//         );

//   final Ref ref;
//   final FCSRepositoryImpl fcmRepository;
// }

// final fcsControllerProvider =
//     StateNotifierProvider<FCSController, FcsState>((ref) {
//   return FCSController(
//     ref: ref,
//     fcmRepository: ref.watch(fcsRepositoryProvider),
//   );
// });
