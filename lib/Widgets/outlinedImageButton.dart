import 'package:beacon/Theme/beaconTheme.dart';
import 'package:flutter/material.dart';

class OutlinedImageButton extends StatelessWidget {
  String image;
  String label;
  OutlinedImageButton({
    @required this.image,
    @required this.label,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 5.0,
      ),
      child: OutlinedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.symmetric(
              horizontal: 8.0,
              vertical: 8.0,
            ),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
        ),
        onPressed: () {},
        child: Row(
          children: [
            Image.asset(
              '$image',
              width: 40.0,
              height: 40.0,
            ),
            Spacer(
              flex: 2,
            ),
            Text(
              '$label',
              style: TextStyle(
                color: BeaconColors.lightGrey,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}
