import 'package:boxire_flutter/views/feature_views/line_tracking.dart';
import 'package:boxire_flutter/views/feature_views/route_finding.dart';
import 'package:boxire_flutter/views/feature_views/secure_auth.dart';
import 'package:boxire_flutter/views/feature_views/wireless_connect.dart';
import 'package:boxire_flutter/widgets/custom_header.dart';
import 'package:boxire_flutter/widgets/custom_product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 50,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CustomHeader(headerText: "Explore"),
                const SizedBox(height: 20),
                CustomProductCard(
                  title: "Colored Line Tracking",
                  imgUrl: 'assets/images/colored_lines_preview.jpeg',
                  featurePage: const ColoredLineTracking(),
                ),
                const SizedBox(height: 20),
                CustomProductCard(
                  title: "Route Finding Algorithm",
                  imgUrl: 'assets/images/route_finding.png',
                  featurePage: const RouteFindingAlgorithm(),
                ),
                const SizedBox(height: 20),
                CustomProductCard(
                  title: "Secure Authentication",
                  imgUrl: 'assets/images/secure_authentication.webp',
                  featurePage: const SecureAuthentication(),
                ),
                const SizedBox(height: 20),
                CustomProductCard(
                  title: "Wireless Connection",
                  imgUrl: 'assets/images/wireless_connection.jpg',
                  featurePage: const WirelessConnection(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
