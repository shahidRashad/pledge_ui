import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomTextField extends StatelessWidget {

  String data;
  Color? color;
  String? family;
  double? size;
  FontWeight? weight;
  TextAlign? align;

  CustomTextField({Key? key, required this.data, this.color, this.size, this.weight, this.family, this.align}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(data,
    textAlign: align,
    style: TextStyle(
      color: color,
      fontSize: size,
      fontWeight: weight,
      fontFamily: family,
    ),
    );
  }
}