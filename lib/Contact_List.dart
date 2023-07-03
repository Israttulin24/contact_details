import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Contact extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return ContactView();
  }
}

class ContactView extends State<Contact>{

  List ToDoList1 = [{1}];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Contact List'),
      ),

      body: ListView.builder(
          itemCount: ToDoList1.length,
          itemBuilder: (context,index){
            return GestureDetector(
              child: Card(
                elevation: 0,
                child: Column(
                  children: [
                    ListTile(
                      title: Text('John Doe'),
                      onTap: (){
                        showBottomSheet(context: context, builder: (BuildContext){
                        return SizedBox(
                          width: 500,
                          height: 200,
                          child: BottomSheet(
                              onClosing: (){Navigator.of(context).restorationId;},
                              builder:(BuildContext){
                                      return Container(
                                        padding: EdgeInsets.only(left: 20),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('Contact Details',style: TextStyle(fontSize:20,fontWeight:FontWeight.bold),),
                                            Padding(padding: EdgeInsets.only(bottom: 15)),
                                            Text('Name: John Doe'),
                                            Text('Email: doe23@gmail.com'),
                                            Text('Phone Number: 546789'),
                                          ],
                                        ),
                                      );
                                    }
                          ),
                        );});
                      },
                    ),

                    ListTile(
                      title: Text('Jane Smith'),
                      onTap: (){
                        showBottomSheet(context: context, builder: (BuildContext){
                          return SizedBox(
                            width: 500,
                            height: 200,
                            child: BottomSheet(
                                onClosing: (){Navigator.of(context).restorationId;},
                                builder:(BuildContext){
                                  return Container(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Contact Details',style: TextStyle(fontSize:20,fontWeight:FontWeight.bold),),
                                        Padding(padding: EdgeInsets.only(bottom: 15)),
                                        Text('Name: Jane Smith'),
                                        Text('Email: smith23@gmail.com'),
                                        Text('Phone Number: 946789'),
                                      ],
                                    ),
                                  );
                                }
                            ),
                          );});
                      },
                    ),

                    ListTile(
                      title: Text('Alice Johnson'),
                      onTap: (){
                        showBottomSheet(context: context, builder: (BuildContext){
                          return SizedBox(
                            width: 500,
                            height: 200,
                            child: BottomSheet(
                                onClosing: (){Navigator.of(context).restorationId;},
                                builder:(BuildContext){
                                  return Container(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Contact Details',style: TextStyle(fontSize:20,fontWeight:FontWeight.bold),),
                                        Padding(padding: EdgeInsets.only(bottom: 15)),
                                        Text('Name: Alice Johnson'),
                                        Text('Email: alice@gmail.com'),
                                        Text('Phone Number: 646789'),
                                      ],
                                    ),
                                  );
                                }
                            ),
                          );});
                      },
                    ),

                  ],
                ),
              ),
            );

          }

      ),

    );


  }




}
