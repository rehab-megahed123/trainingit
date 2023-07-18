import 'package:flutter/material.dart';
import 'package:flutter_application_ui/models/todos_model.dart';
import 'package:flutter_application_ui/servies/customer_service.dart';

class mains extends StatefulWidget {
  const mains({super.key});

  @override
  State<mains> createState() => _mainscreenState();
}

class _mainscreenState extends State<mains> {
  List<CustomerModel> customers = [];

  bool isLoading = true;

  getCustomers() async {
    customers = await CustomerModel().getCustomersData();
    isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getCustomers();
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? Center(child: CircularProgressIndicator())
        : ListView.builder(
            itemCount: customers.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(customers[index].completed.toString()),
                subtitle: Text(customers[index].title ?? '--'),
                trailing: Icon(Icons.person),
              );
            },
          );
  }
}
