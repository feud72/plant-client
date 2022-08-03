import 'package:beautiflower/models/photos.dart';
import 'package:beautiflower/src/pages/photo/photo_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PhotoListWidget extends ConsumerWidget {
  const PhotoListWidget({Key? key, required this.photos}) : super(key: key);

  final List<Photo> photos;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: photos.length,
        (BuildContext context, int index) {
          final photo = photos[index];
          return PhotoItem(photo: photo);
        },
      ),
    );
  }
}
