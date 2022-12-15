import 'package:flutter/material.dart';
import 'package:provi_checkbox/checkedPage.dart';
import 'package:provi_checkbox/provider/chech_prov.dart';
import 'package:provider/provider.dart';


class Check extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    final p = Provider.of<Checkprovider>(context);
    List Item = [
      "Rice",
      "Bread",
      "Seafood",
      "Meat",
      "Pasta",
      "Soups",
      "Dairy",
      "Cheese",
      "Eggs",
      "Tomato sauce",
      "Salsa",
      "Frozen shrimp"
    ];
    return Scaffold(
      // backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
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
                itemCount: Item.length,
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
                              Item[index],
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            ),
                            Checkbox(
                              value:  p.isCheck(Item[index]),

                              onChanged: (bool? value) {
                                p.selectedcheck(Item[index]);

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
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.green,
        onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder:(context)=>Checked()));
      },label: Text("Cart"),
      ),
    );
  }
}
