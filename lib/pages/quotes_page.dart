import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todays/constant/color_manager.dart';
import 'package:todays/pages/widgets/quotes_box.dart';

import '../business_logic/bloc/bloc/quotes/bloc/quotes_bloc.dart';

class Quotes extends StatefulWidget {
  static const String id = "Quotes_screen";
  const Quotes({Key? key}) : super(key: key);

  @override
  State<Quotes> createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quotes for today"),
        backgroundColor: ColorManager.colorPrimary,
      ),
      body: BlocBuilder<QuotesBloc, QuotesState>(
        builder: (context, state) {
          if (state is QuotesFailed) {
            return Text(state.message.toString());
          } else if (state is QuotesLoaded) {
            return ListView.builder(
                itemCount: state.model.quotes!.length,
                itemBuilder: (BuildContext context, index) {
                  var data = state.model.quotes![index];
                  return QuotesBox(quote: data.quote, author: data.author);
                });
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
