import 'package:beautiflower/models/photos.dart';
import 'package:beautiflower/models/species.dart';
import 'package:beautiflower/src/components/spinner.dart';
import 'package:beautiflower/src/pages/photo/photo_detail.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

typedef OnTapFunction = void Function();

class SpeciesItem extends StatelessWidget {
  const SpeciesItem({Key? key, required this.species, required this.onTap})
      : super(key: key);

  final Species species;
  final OnTapFunction onTap;

  @override
  Widget build(BuildContext context) {
    final imageListWidget = species.photos
        .map((photo) => _buildThumbnailItem(context, photo))
        .toList(growable: true);

    if (imageListWidget.length < 4) {
      imageListWidget.add(Padding(
        padding: const EdgeInsets.only(top: 4.0, right: 8.0),
        child: Container(
            height: 60,
            width: 60,
            color: Colors.grey.withOpacity(0.5),
            child: const Center(child: Icon(Icons.add))),
      ));
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Column(
        children: [
          _buildCardTitle(),
          Expanded(
            child: Row(
              children: imageListWidget,
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }

  Padding _buildThumbnailItem(BuildContext context, Photo photo) {
    return Padding(
      padding: const EdgeInsets.only(top: 4.0, right: 8.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PhotoDetailPage(photo: photo),
            ),
          );
        },
        child: Hero(
          tag: photo.url,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(2.0)),
            child: CachedNetworkImage(
              height: 60,
              width: 60,
              imageUrl: photo.thumbnail,
              placeholder: (context, url) => const SpinnerWidget(),
              errorWidget: (context, url, error) => Container(
                  height: 60,
                  width: 60,
                  color: Colors.white,
                  child: const Center(child: Icon(Icons.error))),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCardTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Text(
                species.nameKor ?? "이름을 입력해 주세요.",
                style: const TextStyle(
                    fontSize: 16, overflow: TextOverflow.ellipsis),
              ),
            ),
            const SizedBox(width: 8),
            Row(
              children: [
                Text(
                  species.family?.nameKor ?? "",
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  species.genus?.nameKor ?? "",
                ),
              ],
            ),
          ],
        ),
        Text(
          species.name,
          style: const TextStyle(
              overflow: TextOverflow.ellipsis,
              fontSize: 12,
              color: Colors.black54),
        ),
      ],
    );
  }
}
