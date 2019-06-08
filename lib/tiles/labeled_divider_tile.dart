import 'package:flutter/material.dart';

class LabeledDividerTile extends StatelessWidget {
  final String hint;
  final bool hideDivider;
  final bool isFirst;

  const LabeledDividerTile({
    Key key,
    this.hint,
    this.hideDivider: false,
    this.isFirst: false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context)
        .textTheme
        .caption
        .copyWith(color: Theme.of(context).accentColor);

    return Container(
      height: 56,
      child: Center(
        child: Column(
          children: <Widget>[
            if(isFirst || hideDivider) Container() else Divider(),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text(
                  hint,
                  style: txtTheme,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
