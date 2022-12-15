import 'package:flutter/material.dart';
import 'package:provi_checkbox/provider/chech_prov.dart';
import 'package:provider/provider.dart';

class Checked extends StatelessWidget {
  const Checked({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool checked1 = true;
    final p = Provider.of<Checkprovider>(context);
    final words1 = p.words;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
       /* leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),*/
        title: Text(
          "GROCERIES",
          style: TextStyle(color: Colors.black, fontSize: 40),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: Text(
                "Items",
                style: TextStyle(fontSize: 30, color: Colors.white),
              )),
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: words1.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffE66D5C),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              words1[index],
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            ),
                            Checkbox(
                              value: checked1,
                              onChanged: (bool? value) {
                                p.selectedcheck(words1[index]);

                              },
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
