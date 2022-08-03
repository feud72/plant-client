import 'package:beautiflower/models/photos.dart';
import 'package:beautiflower/src/components/server_error.dart';
import 'package:beautiflower/src/components/spinner.dart';
import 'package:beautiflower/src/pages/photo/photo_list_builder.dart';
import 'package:beautiflower/src/services/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PhotoList extends StatelessWidget {
  const PhotoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final asyncValue = ref.watch(photosProvider);
      return asyncValue.when(
        data: (List<Photo> photos) => PhotoListWidget(photos: photos),
        error: (Object? err, StackTrace? s) => SliverToBoxAdapter(
            child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.8,
                child: ServerError(err: err!, s: s))),
        loading: () => SliverToBoxAdapter(
            child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.8,
                child: const SpinnerWidget())),
        onGoingLoading: (List<Photo> photos) => PhotoListWidget(photos: photos),
        onGoingError: (List<Photo> photos, Object? e, StackTrace? stk) =>
            PhotoListWidget(photos: photos),
      );
    });
  }
}
