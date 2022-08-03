import 'package:beautiflower/models/photos.dart';
import 'package:beautiflower/src/components/spinner.dart';
import 'package:beautiflower/src/pages/photo/photo_detail.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PhotoItem extends StatelessWidget {
  const PhotoItem({Key? key, required this.photo}) : super(key: key);

  final Photo photo;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _title(photo),
        CachedNetworkImage(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
          imageUrl: photo.url,
          placeholder: (context, url) => Container(
            color: Colors.grey.withOpacity(0.3),
            child: const SpinnerWidget(),
          ),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
        const SizedBox(height: 8.0),
        _description(photo),
        _actionButton(context, photo),
        const Divider(thickness: 1, height: 24),
      ],
    );
  }

  Widget _title(Photo element) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          element.species != null && element.species!.nameKor != null
              ? Text(
                  element.species!.nameKor!,
                  style: const TextStyle(fontSize: 20),
                )
              : const Text(
                  "이름을 입력해 주세요.",
                  style: TextStyle(fontSize: 20),
                ),
          const SizedBox(
            width: 1,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      element.family!.nameKor ?? "",
                      style: const TextStyle(fontSize: 12),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      element.genus!.nameKor ?? "",
                      style: const TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                Text(
                  element.species!.name,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  textAlign: TextAlign.end,
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _description(Photo element) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          element.owner != null
              ? Text(
                  element.owner!.username,
                  style: const TextStyle(fontSize: 14, color: Colors.black54),
                )
              : const Text(
                  "익명",
                  style: TextStyle(fontSize: 14, color: Colors.black54),
                ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: Text(
              "${element.uploadedAt.year.toString()}년 ${element.uploadedAt.month.toString()}월 ${element.uploadedAt.day.toString()}일",
              style: const TextStyle(fontSize: 14, color: Colors.black54),
              textAlign: TextAlign.end,
            ),
          ),
        ],
      ),
    );
  }

  Widget _actionButton(BuildContext context, Photo element) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PhotoDetailPage(photo: element),
                ),
              );
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.lightGreen),
              foregroundColor: MaterialStateProperty.all(Colors.white),
            ),
            child: const Text("상세내용"),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
              foregroundColor: MaterialStateProperty.all(Colors.white),
            ),
            child: const Text("식별하기"),
          ),
        ],
      ),
    );
  }
}
