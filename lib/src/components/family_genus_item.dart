import 'package:beautiflower/src/components/spinner.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

typedef OnTapFunction = void Function();

class FamilyGenusItem extends ConsumerWidget {
  final dynamic element;
  final OnTapFunction onTap;
  final int itemCount;

  const FamilyGenusItem(
      {required this.element,
      required this.onTap,
      required this.itemCount,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(onTap: onTap, child: _buildFamilyGenusWidget());
  }

  ClipRRect _buildFamilyGenusWidget() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4.0),
      child: element.photos != null && element.photos.isNotEmpty
          ? CachedNetworkImage(
              imageUrl: element.photos[0].thumbnail,
              placeholder: (context, url) => const SpinnerWidget(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
              imageBuilder: (context, imageProvider) =>
                  _buildImageWithCountStackWidget(imageProvider),
            )
          : _buildImageWithCountStackWidget(
              const AssetImage("assets/images/plant_default_image.png"),
            ),
    );
  }

  Widget _buildImageWithCountStackWidget(ImageProvider<Object> imageProvider) {
    return Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        _buildImage(imageProvider),
        _buildChildrenCount(),
      ],
    );
  }

  Container _buildImage(ImageProvider<Object> imageProvider) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: imageProvider,
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(child: Container()),
          Container(
            width: 250,
            color:
                Colors.grey.withOpacity(element.photos.isNotEmpty ? 0.5 : 0.8),
            child: _buildTitle(),
          ),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return const SizedBox(
      height: 4,
    );
  }

  Widget _buildTitle() {
    return SizedBox(
      height: 45,
      child: element.nameKor != null
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _title(),
                _subTitle(),
                _buildDivider(),
              ],
            )
          : Center(child: _title()),
    );
  }

  Text _subTitle() {
    return Text(
      element.name,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(
        fontSize: 12,
        color: Colors.white,
      ),
    );
  }

  Text _title() {
    return Text(
      element.nameKor ?? element.name,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 16,
        color: Colors.white,
      ),
    );
  }

  Widget _buildChildrenCount() {
    return ClipRRect(
      borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(4.0)),
      child: Container(
        width: 36,
        height: 24,
        color: Colors.grey.withOpacity(0.5),
        child: Center(
            child: Text(
          itemCount.toString(),
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        )),
      ),
    );
  }
}
