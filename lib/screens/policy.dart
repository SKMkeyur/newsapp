import 'package:flutter/material.dart';

class Policy extends StatefulWidget {
  static const sid = 'policy';
  State<StatefulWidget> createState() {
    return _PolicyState();
  }
}

/// This is the private State class that goes with MyStatefulWidget.
class _PolicyState extends State<Policy> {
  void initState() {
    super.initState();
    // Timer(
    //     Duration(seconds: 3),
    //     () => Navigator.pushReplacement(
    //         context, MaterialPageRoute(builder: (context) => Onboarding.sid())));
  }

  @override
  Widget build(BuildContext context) {
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
              child: new Text('Privacy Policy',
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
                  '\n 1.The App does not sell, rent or lease its customer lists to third parties \n\n2. We will keep Your Personal Information including SPDI private and will not share it with third parties, unless We believe in good faith that disclosure of Your Personal Information including SPDI or any other information We collect about You is necessary for Permitted Use or to: \n\n(i) Comply with a court order or other legal process under any applicable laws. \n(ii) Protect the rights, property or safety of Public or another party. \n(iii) Enforce the agreement, including Terms. \n(iv) Respond to claims that any posting or other content violates the rights of third-parties. \n\n 3. The security of Your Personal Information including SPDI is important to Us. Hence, we maintain   a high standard of security for our Users. In this regard, We follow all reasonable security practices and procedures as required under applicable laws and which is commercially reasonable which includes all physical, managerial, operational and technical security measures to protect the Personal Information including SPDI submitted to Us against unauthorized access, alteration, disclosure,loss, misuse, or destruction, both during transmission and once We receive it. These measures vary based on the type and sensitivity of the data. \n\n 4.No warranty of any kind, implied, expressed or statutory, including but not limited to the warranties of non-infringement of third-party rights, title, merchantability, fitness for a particular purpose and freedom from computer virus, is given with respect to the contents available through the App or its links to other internet resources as may be available to Your through the App. \n\n5.If you have any questions or comments about this Privacy Policy, please contact us at:flipbitcoin00@gmail.com.\n\n',
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
