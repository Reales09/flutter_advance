import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  final IconData iconData;
  final VoidCallback onPressed;

  FloatingActionButtonGreen({
    required this.iconData,
    required this.onPressed
});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButtonGreen();
  }

}


class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {

  bool _pressed = false;

  /*
  void onPressedFav(){
    setState(() {
      _pressed = !_pressed;
    });

    // Scaffold.of(context).showBottomSheet (
    //     BottomSheet(onClosing: () {  }, builder: (BuildContext context) {  return Text("No widget to build"); },
    //
    //     ) as WidgetBuilder
    // );

  }

   */

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: widget.onPressed,

      child: Icon(
        // widget.iconData
          _pressed ? widget.iconData : widget.iconData
      ),

      heroTag: null,
    );
  }

}