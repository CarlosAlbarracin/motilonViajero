import 'package:flutter/cupertino.dart';

import 'package:motilon_viajero/restaurants/component/card_video.dart';
import 'package:motilon_viajero/restaurants/controller/video.dart';

class BodyVideo extends StatelessWidget {
  const BodyVideo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ControllerVideo.dataLength,
      itemBuilder: (context, index) {
        return CardVideo(data: ControllerVideo.getVideo(index));
      },
    );
  }
}
