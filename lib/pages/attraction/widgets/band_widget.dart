import 'package:flutter/material.dart';
import 'package:rock_in_rio_app/pages/attraction/widgets/hashtag_widget.dart';

import '../../../themes/app_colors.dart';

class BandWidget extends StatefulWidget {
  final int index;
  final info;

  const BandWidget({Key? key, required this.index, required this.info})
      : super(key: key);

  @override
  State<BandWidget> createState() => _BandWidgetState();
}

bool isLikeButtonPressed = false;

class _BandWidgetState extends State<BandWidget> {
  void likeButtonPressed() {
    setState(() {
      isLikeButtonPressed = !isLikeButtonPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    var tela = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            // Bolinha
            margin: const EdgeInsets.only(right: 8),
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: AppColors.darkerBlue,
            ),
            child: Center(
                child: Text(
              (widget.index + 2).toString(),
              style: TextStyle(color: AppColors.grayBg, fontSize: 20),
            )),
          ),
          SizedBox(
            width: tela.width * 0.7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  // Dados
                  "${widget.info.keys.elementAt(widget.index)}",
                  style: const TextStyle(
                    fontSize: 22,
                  ),
                ),
                Wrap(
                    direction: Axis.horizontal,
                    children: List.generate(
                        widget.info[widget.info.keys.elementAt(widget.index)]
                            .length, // Quantidade
                        ((indexHashtag) => HashtagWidget(
                              text: widget.info[widget.info.keys
                                  .elementAt(widget.index)][indexHashtag],
                            )))),
              ],
            ),
          ),
          InkWell(
            onTap: likeButtonPressed,
            child: Icon(
              Icons.favorite,
              color: isLikeButtonPressed ? AppColors.loveRed : AppColors.grayBg,
            ),
          )
        ],
      ),
    );
  }
}
