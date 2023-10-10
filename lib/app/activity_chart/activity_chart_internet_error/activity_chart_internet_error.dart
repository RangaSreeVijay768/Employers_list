import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../themes/app_colors.dart';
import '../../themes/edge_insets.dart';
import '../../themes/fonts.dart';
import '../../themes/borders.dart';
import '../../themes/shadows.dart';



class ActivityChartInternetError extends StatelessWidget{
  const ActivityChartInternetError({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          height: 300,
          margin: edge_insets_x_30,
          padding: edge_insets_16,
          decoration: BoxDecoration(
              boxShadow: const [shadows.bs_primary],
              color: AppColors.white,
              borderRadius: borderRadius.br_10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: borderRadius.br_10,
                child: Image.asset('images/no internet.gif',
                  fit: BoxFit.fitHeight,
                  height: 140,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "check your internet connection\n(or)",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: Fonts.fontSize18,
                  fontWeight: Fonts.f700
                ),
              ),
              Text("press the button again", style: TextStyle(
                fontSize: Fonts.fontSize18
              ),)
            ],
          ),
        ));
  }

}