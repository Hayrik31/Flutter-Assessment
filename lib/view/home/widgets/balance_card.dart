import 'package:flutter/material.dart';
import 'package:starbucks/core/contants/colors.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryColor,
      height: 300,
      width: 300,
      child: Center(
        child: Container(
          
          width: 270, 
          height: 270,
          decoration: BoxDecoration(
            
            shape: BoxShape.circle,
          border: Border.all(
            color: AppColors.whiteColor,
            width: 5,
          ),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColors.secondaryColor,
                width: 15,
              ),
            ),
            child: const Padding(
              
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Next pay date',
                    style: TextStyle(color: AppColors.textColor, fontSize: 18), 
                  ),
                  
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.calendar_month,color: AppColors.primaryColor,),
                      SizedBox(width: 8,),
                      Text(
                        '15 July',
                        style: TextStyle(color: AppColors.primaryColor, fontSize: 18),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    '3747.00 DH',
                    style: TextStyle(color: AppColors.secondaryColor, fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Available balance',
                    style: TextStyle(color: AppColors.secondaryColor, fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}