import 'package:flutter/material.dart';

class NotificationIcon extends StatelessWidget {
  final double rightMargin;

  NotificationIcon({this.rightMargin = 8.0}); 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: rightMargin), 
      child: Stack(
        alignment: Alignment.center,
        children: [
          const Icon(Icons.notifications, size: 35, color: Colors.white), 
          Positioned( 
            right: 0,
            top: 0,
            child: Container(
              padding: const EdgeInsets.all(1), 
              decoration: BoxDecoration(
                color: Colors.red, 
                borderRadius: BorderRadius.circular(6), 
              ),
              constraints: const BoxConstraints(
                minWidth: 15, 
                minHeight: 15, 
              ),
              child: const Text(
                '2', 
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12, 
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
