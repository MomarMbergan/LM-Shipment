//Note
//<a href="454b25b8a0f379bf509040f4ecb22d54b40591ee"></a>

import 'package:drop_down/components/submit_button.dart';
import 'package:flutter/material.dart';

class SceondPage extends StatelessWidget {
  const SceondPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          SafeArea(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: SizedBox(
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Print',
                          style: TextStyle(color: Colors.white),
                        ),
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          backgroundColor: Colors.green,
                        ),
//Note
//<a href="454b25b8a0f379bf509040f4ecb22d54b40591ee"></a>
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: SizedBox(
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Share',
                          style: TextStyle(color: Colors.white),
                        ),
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          backgroundColor: Colors.green,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: Colors.black,
            thickness: 2,
          ),
        ],
      ),
    );
  }
}

//Note
//<a href="454b25b8a0f379bf509040f4ecb22d54b40591ee"></a>
