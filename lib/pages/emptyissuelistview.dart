import 'package:flutter/material.dart';

class EmptyIssueListView extends StatelessWidget {

  static const PORTRAIT_PADDING = EdgeInsets.only(top: 160.0, bottom: 20.0);
  static const LANDSCAPE_PADDING = EdgeInsets.only(top: 100.0, bottom: 20.0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: MediaQuery.of(context).orientation == Orientation.portrait ? PORTRAIT_PADDING : LANDSCAPE_PADDING,
          child: Row(
            children: <Widget>[
              Expanded(
                child: Icon(
                  Icons.info,
                  size: 80.0,
                  color: Colors.black26,
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('No issues!',
                style: TextStyle(
                    fontSize: 28.0,
                    color: Colors.black26,
                    fontWeight: FontWeight.w700)),
          ],
        ),
      ],
    );
  }
}
