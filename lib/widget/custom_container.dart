import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomContainer extends StatelessWidget {
  var container_padding;
  AlignmentGeometry? alignmentGeometry;
  Widget? child;
  Color? color;
  double? height;
  double? width;
  double curve;

  CustomContainer({Key? key, this.container_padding, this.color, this.height, this.width, this.child, this.curve = 0, this.alignmentGeometry}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignmentGeometry,
      padding: container_padding,
      height: height,
      width: width,
      child: child,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(curve),
      ),
    );
  }
}