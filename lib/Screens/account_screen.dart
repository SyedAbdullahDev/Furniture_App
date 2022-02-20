import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/controller/control.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class account_screen extends StatelessWidget {
  final Control _controller = Get.put(Control());
  account_screen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
              children: [
                const Center(
                  child: Padding(
                    padding: EdgeInsets.only(top:18.0),
                    child: Text(
                      'My Account',
                      style: TextStyle(
                        color:  Color(0xffec6813),
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListTile(
                    leading: const Icon(Icons.person_pin , size: 50, color: Color(0xffec6813),),
                    title: Obx(() => Text(
                    _controller.text.value.toString(),
                    style: const TextStyle(
                      color:  Color(0xffec6813),
                    ),
                  )),
                    subtitle:  Obx(() => Text(
                    _controller.em.value.toString(),
                    style: const TextStyle(
                      color :Color(0xffec6813),
                    ),
                  )),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 18.0),
                  child: ListTile(
                    tileColor:  Color(0xffec6813),
                    title: Text('Favourite'),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 10,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 18.0),
                  child: ListTile(
                    tileColor: Color(0xffec6813),
                    title: Text('Credit'),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 10,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 18.0),
                  child: ListTile(
                    tileColor: Color(0xffec6813),
                    title: Text('Orders'),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 10,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 18.0),
                  child: ListTile(
                    tileColor: Color(0xffec6813),
                    title: Text('Address'),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 10,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 18.0),
                  child: ListTile(
                    tileColor: Color(0xffec6813),
                    title: Text('Vouchers'),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 10,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 18.0),
                  child: ListTile(
                    tileColor: Color(0xffec6813),
                    title: Text('Prefences'),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 10,
                    ),
                  ),
                ),
              ],
            ),
      ),
    );
  }
}
