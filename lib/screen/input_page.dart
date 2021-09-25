import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 18.0, top: 22.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Let\'s Check',
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'futura medium bt',
                  ),
                ),
                Text(
                  'if you are fit in your range',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Text(
                  'Gender',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      color: Color(0xFFEFE4CA),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                // Expanded(
                //   child: null,
                // ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      color: Color(0xFFEFE4CA),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      color: Color(0xFFEFE4CA),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                // Expanded(
                //   child: null,
                // ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      color: Color(0xFFEFE4CA),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      color: Color(0xFFEFE4CA),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                // Expanded(
                //   child: null,
                // ),
              ],
            ),
          ),
          // Expanded(child: null),
          // Expanded(child: null),
          // Expanded(child: null),
        ],
      ),
    );
  }
}

class ReuseableCard extends StatelessWidget {
  const ReuseableCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Color(0xFFEFE4CA),
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
