import 'package:flutter/material.dart';
import 'package:flutter_application_ui/models/todos_model.dart';
import 'package:flutter_application_ui/servies/customer_service.dart';

class mains extends StatefulWidget {
  const mains({super.key});

  @override
  State<mains> createState() => _mainscreenState();
}

class _mainscreenState extends State<mains> {
  /* List<Todosmodel> todos = [];
  bool isLoading = true;
  gettodos() async {
    todos = await Todosmodel().getUsersData();
    isLoading = false;
    setState(() {});
    print(todos.length);
  }

  @override
  void initState() {
    super.initState();
    gettodos();
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? Center(
            child: CircularProgressIndicator(),
          )
        : ListView.builder(
            itemCount: todos.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(
                  todos[index].title ?? "--",
                  style: TextStyle(color: Colors.black),
                ),
                dense: (todos[index].completed),
              );
            },
          );
  }
}*/
  List<CustomerModel> customers = [];

  bool isLoading = true;

  getCustomers() async {
    // customers = await CustomerModel().getCustomersData();
    isLoading = false;
    setState(() {});
  }

  @override
  void initstate() {
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
