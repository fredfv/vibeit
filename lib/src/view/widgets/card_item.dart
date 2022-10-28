import 'package:flutter/material.dart';
import 'package:vibeit/src/model/color_outlet.dart';

class CardItem extends StatefulWidget {
  final IconData icon;
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const CardItem({
    Key? key,
    required this.label,
    required this.icon,
    required this.selected,
    required this.onTap,
  }) : super(key: key);

  @override
  State<CardItem> createState() => _CardItem();
}

class _CardItem extends State<CardItem> {
  bool _isPressed = false;
  final bevel = 2.0;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        onTap: widget.onTap,
        onTapDown: (TapDownDetails details) {
          setState(() {
            _isPressed = true;
            print(_isPressed);
          });
        },
        onTapUp: (TapUpDetails details) {
          setState(() {
            _isPressed = false;
            print(_isPressed);
          });
        },
        onTapCancel: () {
          setState(() {
            _isPressed = false;
            print(_isPressed);
          });
        },
        child: Column(
          children: [
            Stack(children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 100,
                decoration: _isPressed
                    ? const BoxDecoration(
                        color: ColorOutlet.primary,
                        shape: BoxShape.circle,
                        border: Border.fromBorderSide(
                          BorderSide(
                            color: ColorOutlet.primary,
                            width: 3,
                          ),
                        ),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(-4, -4),
                            color: ColorOutlet.darkShadow,
                            blurStyle: BlurStyle.inner,
                            blurRadius: 10,
                            spreadRadius: -2,
                          ),
                          BoxShadow(
                            offset: Offset(4, 4),
                            color: ColorOutlet.whiteShadow,
                            blurStyle: BlurStyle.inner,
                            blurRadius: 10,
                            spreadRadius: -2,
                          ),
                        ],
                      )
                    : const BoxDecoration(
                        color: ColorOutlet.primary,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(-4, -4),
                            color: ColorOutlet.whiteShadow,
                            //blurStyle: BlurStyle.outer,
                            blurRadius: 10,
                            spreadRadius: -2,
                          ),
                          BoxShadow(
                            offset: Offset(4, 4),
                            color: ColorOutlet.darkShadow,
                            //blurStyle: BlurStyle.outer,
                            blurRadius: 10,
                            spreadRadius: -2,
                          ),
                        ],
                      ),
                child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: FittedBox(
                      child: Icon(
                    widget.icon,
                    color: widget.selected ? ColorOutlet.accent : ColorOutlet.secondary,
                  )),
                ),
              ),
            ]),
          ],
        ));
  }
}
