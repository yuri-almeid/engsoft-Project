import 'package:flutter/material.dart';

class MenuBottom extends StatelessWidget {
  const MenuBottom({
    this.title,
    this.onTap,
    this.isCurrentPage,
  });

  final String title;
  final Function onTap;
  final bool isCurrentPage;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: isCurrentPage ? FontWeight.bold : FontWeight.normal,
              ),
            ),
            Expanded(
              child: Divider(
                color: isCurrentPage ? Colors.black : Colors.black54,
                thickness: isCurrentPage ? 0.8 : 0.2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
