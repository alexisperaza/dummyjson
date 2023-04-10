import 'package:app_project/src/services/api_services.dart';
import 'package:flutter/material.dart';

class PromoBanner extends StatefulWidget {
  const PromoBanner({super.key});

  @override
  State<PromoBanner> createState() => _PromoBannerState();
}

class _PromoBannerState extends State<PromoBanner> {
  final controller = PageController(viewportFraction: 0.85, initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: ApiServices().porductsBanner(),
        builder: (context, AsyncSnapshot snap) {
          if (snap.hasData) {
            final prodList = snap.data['products'] as List;
            return SizedBox(
              height: 300.0,
              child: PageView.builder(
                  controller: controller,
                  padEnds: false,
                  itemCount: prodList.length,
                  itemBuilder: (context, i) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(prodList[i]['thumbnail']))),
                      ),
                    );
                  }),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
