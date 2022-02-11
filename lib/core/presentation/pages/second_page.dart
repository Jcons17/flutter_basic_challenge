import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/bloc/bloc.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rest API Test"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Employees:"),
                Builder(builder: (context) {
                  return BlocBuilder<SecondpageBloc, SecondpageState>(
                      builder: (context, state) {
                    return ElevatedButton(
                      onPressed: () {
                        !state.loading
                            ? BlocProvider.of<SecondpageBloc>(context)
                                .loadData()
                            : null;
                      },
                      child: const Text("Load Employees"),
                    );
                  });
                }),
              ],
            ),
          ),
          const Expanded(child: BodyEmployes())
        ],
      ),
    );
  }
}

class BodyEmployes extends StatelessWidget {
  const BodyEmployes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SecondpageBloc, SecondpageState>(
      builder: (context, state) {
        if (state.loading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state.errored && state.employees.isEmpty) {
          return Text("Hubo un error", style: TextStyle(color: Colors.red));
        }
        if (state.employees.isNotEmpty) {
          return ListView.builder(
            itemCount: state.employees.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Text(index.toString()),
                title: Text(state.employees[index].employee_name),
                subtitle: Text(state.employees[index].employee_age.toString() +
                    "\n" +
                    state.employees[index].employee_salary.toString()),
                isThreeLine: true,
                trailing: Icon(Icons.account_circle_outlined),
              );
            },
          );
        }
        return Text("Haz Click para mostrar a los empleados");
      },
    );
  }
}
