import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}



class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        title: Text("Decider Appp"),
        backgroundColor: Colors.orangeAccent,
        actions: [

          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.abc_sharp,
              color: Colors.orangeAccent,

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right:20.0),
            child: Icon(
              Icons.abc_sharp,
              color: Colors.black,
            ),
          )

        ], //actions
      ),

      body: SafeArea(child:

      Container(

        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(0.0),
              child:Text("Decisions left: ##") ,


            ),
            Spacer(),
            _buildQuestionForm(),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child:Text("Account Type: Free") ,


            ),
          ],
        ),
      ),
      ),


    );
  }



  Widget _buildQuestionForm(){
    return Column(
      children: [

        Text(
          "Should I ",
          style: Theme.of(context).textTheme.headlineLarge,


        ),

        Padding(
          padding: const EdgeInsets.only(
            bottom: 10.0,
            left: 30.0,
            right: 30.0,
          ),
          child:TextField(
            decoration: InputDecoration(
                helperText: "Enter a text"
            ),
          ),

        ),
        ElevatedButton(
          onPressed: () {print("Clicked");},
          child:Text("Enter") ,



        )

      ],
    );


  }


}