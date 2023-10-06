import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatefulWidget {
  NetworkImage? image;
  String initials;

  CustomCircleAvatar({Key? key, required this.image, required this.initials})
      : super(key: key);

  @override
  State<CustomCircleAvatar> createState() => _CustomCircleAvatarState();
}

class _CustomCircleAvatarState extends State<CustomCircleAvatar> {
  bool checkLoading = true;

  @override
  void initState() {
    super.initState();
    widget.image
        ?.resolve(const ImageConfiguration())
        .addListener(ImageStreamListener((ImageInfo info, bool tf) {
      if (mounted) {
        setState(() {
          checkLoading = false;
        });
      }
    }));
  }

  @override
  Widget build(BuildContext context) {
    return checkLoading == true
        ? CircleAvatar(child: Text(widget.initials))
        : CircleAvatar(backgroundImage: widget.image);
  }
}
