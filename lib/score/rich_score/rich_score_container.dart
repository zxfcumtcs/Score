import 'package:flutter/widgets.dart';
import 'package:score/score/rich_score/rich_score.dart';

class RichScoreContainer extends StatefulWidget {
  final double score;
  const RichScoreContainer({Key key, this.score = 0}) : super(key: key);

  @override
  _RichScoreContainerState createState() => _RichScoreContainerState();
}

class _RichScoreContainerState extends State<RichScoreContainer> {
  double score;
  @override
  void initState() {
    super.initState();
    score = widget.score ?? 0;
  }

  @override
  void didUpdateWidget(RichScoreContainer oldWidget) {
    super.didUpdateWidget(oldWidget);

    score = widget.score ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return RichScore(
      score: score,
      callback: (double s) {
        setState(() {
          score = s;
        });
      },
    );
  }
}