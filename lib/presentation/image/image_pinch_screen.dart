import "package:flutter/material.dart";
import "package:transparent_image/transparent_image.dart";

class ImagePinchScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final String url = ModalRoute.of(context).settings.arguments;
    return SafeArea(
      child: GestureDetector(
        child: 
          FadeInImage.memoryNetwork(
            image: url,
            placeholder: kTransparentImage,
          ),
        
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
