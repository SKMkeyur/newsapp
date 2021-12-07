import 'package:flutter/material.dart';
import 'package:newsapp/screens/onboarding.dart';
import 'package:newsapp/screens/welcomescreen.dart';

class Terms extends StatefulWidget {
  @override
  static const sid = 'terms';
  State<StatefulWidget> createState() {
    return _TermsState();
  }
}

/// This is the private State class that goes with MyStatefulWidget.
class _TermsState extends State<Terms> {
  void initState() {
    super.initState();
    // Timer(
    //     Duration(seconds: 3),
    //     () => Navigator.pushReplacement(
    //         context, MaterialPageRoute(builder: (context) => Onboarding.sid())));
  }

  @override
  Widget build(BuildContext context) {
    const Key centerKey = ValueKey<String>('bottom-sliver-list');
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          pinned: true,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.grey),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Padding(
              padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
              child: new Text('Terms & Condition',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black))),
        ),
        SliverToBoxAdapter(
            child: SizedBox(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Text(
                  "\n1. Users approve of and accept this Agreement By:  \n\n(a) downloading and/or installing the App on your device. \n(b) access or use from any App the App or any Content available within the App device. \n\n2. User may accept this Agreement only if: \n\n(a) such user is a natural person of legal age to consent in your jurisdiction and sound Qualified minds to form a binding contract with us. \n(b) such user is a juridical person duly incorporated in accordance with its applicable laws, and Have all the necessary authorizations, permits and allowances to enter  Agreement CreateCreate a binding contract. \n(c) such a user is not legally prohibited or restricted from using the App. \n\n\n 3. The App is designed to provide You an in-app browsing experience through an embedded browser. The App is per se a platform which hosts videos by third parties. TheApp does not host, display or transmit any content owned by third parties on its servers,unless We either have a license to host, display or transmit over such content or are otherwise permitted under the applicable law, to do the same. When You create and share or play a video, You Agree and acknowledge that the App does not create and/or broadcast any content on its own accord and We are not responsible or liable for the content or accuracy of the video that may be accessed by You through theApp. \n\n 4. Third Party Sites, Services and Products \n\n      The App may contain links to other Internet sites owned and operated by third parties. Users' use of each of those sites is subject to the conditions, if any, posted by the sites. App does not exercise control over any Internet sites apart from App and cannot be held responsible for any content residing in any third-party Internet site. App 's inclusion of third-party content or links to third-party Internet sites is not an endorsement by App of such third-party Internet sites. \n\n     Users' correspondence, transactions/offers or related activities with third parties, including payment providers and verification service providers, are solely between the User and that third party. Users' correspondence, transactions and usage of the services/offers of such third party shall be subject to the terms and conditions, policies and other service terms adopted/implemented by such third party, and the User shall be solely responsible for reviewing the same prior to transacting or availing of the services/offers of such third party. Users agree that App will not be responsible or liable for any loss or damage of any sort incurred as a result of any such transactions/offers with third parties. Any questions, complaints, or claims related to any third party product or service should be directed to the appropriate vendor. \n\n      App contains content that is created by App as well as content provided by third parties. App does not guarantee the accuracy, integrity, quality of the content provided by   third parties and such content may not be relied upon by the Users in utilizing the App Services provided on app  including while participating in any of the contests hosted on App .\n\n\n",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey)),
            ),
          ),
        ))
      ],
    ));
  }
}
