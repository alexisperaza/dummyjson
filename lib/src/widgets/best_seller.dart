import 'package:app_project/src/services/api_services.dart';
import 'package:app_project/src/widgets/flayers.dart';
import 'package:flutter/material.dart';

class BestSeller extends StatelessWidget {
  const BestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ApiServices().bestSeller(),
      builder: (context, AsyncSnapshot snap) {
        if (snap.hasData) {
          final bSList = snap.data['products'] as List;

          return Flayers(
              title: 'Lo mas vendido',
              child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: bSList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, i) {
                    return SizedBox(
                        child: Image(
                      image: NetworkImage(bSList[i]['thumbnail']),
                    ));
                  }));
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
