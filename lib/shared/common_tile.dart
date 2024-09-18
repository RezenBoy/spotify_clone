import 'package:flutter/material.dart';

class CommonTile extends StatelessWidget {
  const CommonTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Container(
        margin: EdgeInsets.only(bottom: 5),
        height: 58,
        decoration: BoxDecoration(
          color: Colors.grey,
            border: Border.all(),
            borderRadius: BorderRadius.circular(5)),
        child: Row(
          children: [
            Container(

              height: 58,
              width: 58,
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      bottomLeft: Radius.circular(5))),
            )
          ],
        ),
      ),
    );
  }
}
