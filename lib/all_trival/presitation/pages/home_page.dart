import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:postdioproject/all_trival/presitation/bloc/all_bloc.dart';
import 'package:postdioproject/all_trival/presitation/widget/dialog_widget.dart';
import 'package:postdioproject/all_trival/presitation/widget/grid_view_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late AllBloc allBloc;
  _HomePageState();

  @override
  void initState() {
    allBloc = BlocProvider.of<AllBloc>(context)
      ..add(GetAllCountryModelEvent(true));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          allBloc.add(GetAllCountryModelEvent(true));
        },
        child: BlocConsumer<AllBloc, AllState>(
          listener: (context, state) {
            // if (state is AllCountryModelNoConnectionState) {
            //   showDialog(
            //       context: context,
            //       builder: (BuildContext contxet) {
            //         return DialogWidget();
            //       });
            // }
          },
          builder: (context, state) {
            if (state.status == AllStateStatus.loading) {
              return Scaffold(
                  appBar: AppBar(
                      title: Text("Yangilanmoqda......."),
                      backgroundColor: Colors.red),
                  body: Center(
                    child: CupertinoActivityIndicator(
                      radius: 30,
                    ),
                  ));
            } else if (state.status == AllStateStatus.success) {
              return Grid(list: state.data!.toList());
            } else if (state.status == AllStateStatus.failure) {
              return Center(child: Text(state.error!.message));
            } else {
              return Container(
                child: Text("data"),
              );
            }
          },
        ),
      ),
    );
  }
}
