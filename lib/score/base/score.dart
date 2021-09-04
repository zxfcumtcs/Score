import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:score/score/base/score_star.dart';

typedef ScoreCallback = void Function(double score);

class Score extends StatefulWidget {
  final double score;
  final ScoreCallback callback;

  const Score({Key key, this.score = 0, this.callback}) : super(key: key);

  @override
  _ScoreState createState() => _ScoreState();
}

class _ScoreState extends State<Score> {

  double score;

  @override
  void initState() {
    super.initState();

    score = widget.score ?? 0;
  }

  @override
  void didUpdateWidget(Score oldWidget) {
    super.didUpdateWidget(oldWidget);

    score = widget.score ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    void _changeScore(Offset offset) {
      Size _size = context.size;
      double offsetX = min(offset.dx, _size.width);
      offsetX = max(0, offsetX);

      setState(() {
        score = double.parse(((offsetX / _size.width) * 5).toStringAsFixed(1));
      });

      if (widget.callback != null) {
        widget.callback(score);
      }
    }

    return GestureDetector(
      child: ScoreStar(Colors.grey, Colors.amber, score),
      onTapDown: (TapDownDetails details) {
        _changeScore(details.localPosition);
      },
      onLongPressMoveUpdate:(LongPressMoveUpdateDetails details) {
        _changeScore(details.localPosition);
      },
    );
  }
}