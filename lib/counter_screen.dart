import 'package:flutter/material.dart';
import 'package:msp_tasks/switch_screen.dart';

class CounterScreen extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => CounterScreenState();
}

class CounterScreenState extends State<CounterScreen>
{

  int counter = 1;

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'COUNTER',
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SizedBox(height: 20.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                [
                  TextButton(
                    onPressed: ()
                    {
                      setState(() {
                        counter--;
                        print(counter);
                      });
                    },
                    child: Text(
                      'MINUS',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                    ),
                    child: Text(
                      '$counter',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 50.0,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: ()
                    {
                      setState(() {
                        counter++;
                        print(counter);
                      });
                    },
                    child: Text(
                      'PLUS',
                    ),
                  ),

                ],
              ),
              SizedBox(height: 30.0,),
              ElevatedButton(
                  onPressed: ()
                  {
                    showDialog(
                      barrierColor: Colors.blue.withOpacity(0.3,),
                        barrierDismissible: false,
                        context: context,
                        builder:(context)
                        {
                          return AlertDialog(
                            title: Text('Do you want to go to the next page?',),
                            content: Text('Thanks for using the app'),
                            backgroundColor: Colors.grey,
                            contentTextStyle: TextStyle(
                              color: Colors.white,
                            ),
                            titleTextStyle: TextStyle(
                              color: Colors.white,
                            ),
                            actions: [
                              TextButton(
                                  onPressed: ()
                                  {
                                    Navigator.of(context).pop();
                                  },
                                  child:Text('No',
                                    style: TextStyle(
                                        color:Colors.white

                                    ),), ),
                              TextButton(
                                onPressed: ()
                                {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder:(context)
                                      {
                                        return SwitchScreen();
                                      } ));
                                },
                                child:Text('yes',
                                  style: TextStyle(
                                      color:Colors.white

                                  ),), ),
                            ],
                          );
                        }
                    );
                  },
                  child: Text('Next',),
              ),




            ],
          ),
        ),
      ),
    );
  }
}















