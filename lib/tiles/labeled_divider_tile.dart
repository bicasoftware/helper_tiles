import 'package:flutter/material.dart';

class LabeledDividerTile extends StatelessWidget {
  final String hint;
  final bool hideDivider;

  const LabeledDividerTile({Key key, this.hint, this.hideDivider: false})
      : super(key: key);

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
            hideDivider ? Container() : Divider(),
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
