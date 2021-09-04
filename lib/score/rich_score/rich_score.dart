import 'package:flutter/widgets.dart';
import 'package:score/score/base/score.dart';
import 'package:score/score/rich_score/render_rich_score.dart';

class RichScore extends MultiChildRenderObjectWidget {
  RichScore({
    Key key,
    double score,
    ScoreCallback callback,
  }) : super(
    key: key,
    children: [
      Score(score: score, callback: callback),
      Text('$score分', style: TextStyle(fontSize: 28)),
    ]
  );

  @override
  RenderObject createRenderObject(BuildContext context) {
    return RenderRichScore();
  }
}