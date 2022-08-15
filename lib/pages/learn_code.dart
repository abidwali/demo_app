import 'package:flutter/material.dart';

class LearnCode extends StatefulWidget {
  const LearnCode({Key? key}) : super(key: key);

  @override
  State<LearnCode> createState() => _LearnCodeState();
}

class _LearnCodeState extends State<LearnCode> {
  bool isSwitch = false;
  bool? isCheckBox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learn Code"),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint("Info Button");
            },
            icon: const Icon(Icons.info),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/ziyarat.jpg'),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              color: Colors.blueGrey,
              child: const Center(
                child: Text(
                  "This is a Text Widget",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: isSwitch ? Colors.red : Colors.green,
              ),
              onPressed: () {
                debugPrint("Elevated Button");
              },
              child: isSwitch
                  ? const Text("Switched")
                  : const Text("Elevated Button"),
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                primary: isSwitch ? Colors.pink : Colors.amber,
              ),
              onPressed: () {
                debugPrint("Outlined Button");
              },
              child: const Text("Outlined Button"),
            ),
            TextButton(
              onPressed: () {
                debugPrint("Text Button");
              },
              child: const Text("Text Button"),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint("This is a Row");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                  Text("Row Widget"),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            Switch(
              value: isSwitch,
              onChanged: (bool newBool) {
                setState(
                  () {
                    isSwitch = newBool;
                  },
                );
              },
            ),
            Checkbox(
              value: isCheckBox,
              onChanged: (bool? newBool) {
                setState(() {
                  isCheckBox = newBool;
                });
              },
            ),
            Image.network(
                'https://images.newscientist.com/wp-content/uploads/2019/06/24172503/newton.jpg')
          ],
        ),
      ),
    );
  }
}
