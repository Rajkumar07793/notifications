library notifications;

import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  final List<Map<String, String>> notifications;
  const Notifications({Key key, this.notifications}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: notifications.length,
      itemBuilder: (context, index) {
        return Transform.scale(
          scale: 1,
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            elevation: 10,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
              ),
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.only(left: 0),
              child: ListTile(
                onTap: (){},
                contentPadding: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                // tileColor: Colors.white,
                leading: SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.network(
                    notifications[index]["image"],
                    fit: BoxFit.fill,
                  ),
                ),
                title: Text(notifications[index]["title"]),
              ),
            ),
          ),
        );
      },
    );
  }
}
