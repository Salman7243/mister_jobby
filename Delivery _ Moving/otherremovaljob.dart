import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';


class Job extends StatelessWidget {
  const Job({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        // ignore: prefer_const_constructors
        title: Text(
          "Publish an offer",
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(children: [
          
            Text(
              "Other removal job",
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            Text(
              "Need information",
              style: TextStyle(
                color: Color.fromARGB(221, 114, 110, 110),
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RichText(
                  text: const TextSpan(
                      text: 'Description',
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                      children: <TextSpan>[
                        const TextSpan(
                          text: ' ',
                          style: const TextStyle(
                              color: Colors.blueAccent, fontSize: 20),
                        ),
                      ]),
                ),
                const SizedBox(height: 20),
                Card(
                    elevation: 0,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        maxLines: 8, //or null
                        decoration: InputDecoration.collapsed(
                            hintText: "Description"),
                      ),
                    )),
                SizedBox(
                  height: 20,
                ),
                /*ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Home()),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    height: 15,
                    width: 300,
                    margin: EdgeInsets.all(20),
                    child: Text(
                      "Next",
                      style: TextStyle(
                          color: Color.fromARGB(255, 240, 235, 235)),
                    ),
                  ),
                ),*/
              ],
            ),
          ]),
        ),
      ),
       bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: ElevatedButton(
          onPressed: () {
            /*   Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Furnitureasembly2()),
                            );*/
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
            ),
            height: 20,
            width: 300,
            margin: EdgeInsets.all(20),
            child: Text(
              "Next",
              style: const TextStyle(color: Color.fromARGB(255, 228, 223, 223)),
            ),
          ),
        ),
      ),
    );
  }
}
