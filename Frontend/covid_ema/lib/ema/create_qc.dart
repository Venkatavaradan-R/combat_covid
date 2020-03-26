import 'package:flutter/material.dart';

class QuarantineCitizen extends StatelessWidget {
  //const Login({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          'NEW QC FORM',
           style:TextStyle(
             fontSize:30,
             letterSpacing: 2.0,
           ),
        ),
        centerTitle: true,
      ),
      body:SingleChildScrollView( 
      child:Padding(
      padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
      child:Column(children: <Widget>[
      SizedBox(height:20),
      Center(
        
          child : Text(
              'You are going to add a new quarantined citizen to the database.Ensure that you conduct a checkup before doing the same.',
               style: TextStyle(
                 color: Colors.white,
                 fontSize: 20,
                 letterSpacing: 2.0,
               )
          ) 
      ),
      SizedBox(height: 20,),
      MyCustomForm(),
      SizedBox(height: 40,),
      RaisedButton(
           shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(40),
           side:BorderSide(color:Colors.indigoAccent)),
           color: Colors.indigo,
          onPressed: (){},
          child : Text(
            'CONFIRM',
            style: TextStyle(
              fontSize: 18,
              letterSpacing: 2.0,
            ) 
        
          ),
        ),
        SizedBox(height: 200,),
        ],)
      ),
        )
    );
  }
}

class MyCustomForm extends StatefulWidget {  
      @override  
      MyCustomFormState createState() {  
        return MyCustomFormState();  
      }  
    }  
    // Create a corresponding State class. This class holds data related to the form.  
    class MyCustomFormState extends State<MyCustomForm> {  
      // Create a global key that uniquely identifies the Form widget  
      // and allows validation of the form.  
      final _formKey = GlobalKey<FormState>();  
      /*
      int _selectedPHC = 0;
  
  List<DropdownMenuItem<int>> phcList = [];

  void loadGenderList() {
    phcList = [];
    phcList.add(new DropdownMenuItem(
      child: new Text('3434343434'),
      value: 0,
    ));
    phcList.add(new DropdownMenuItem(
      child: new Text('1212121212'),
      value: 1,
    ));
    phcList.add(new DropdownMenuItem(
      child: new Text('1234567890'),
      value: 2,
    ));
  }
  */
      @override  
      Widget build(BuildContext context) {  
        // Build a Form widget using the _formKey created above.  
        return Form(  
          key: _formKey,  
          child: Column(    
            children: <Widget>[
              Center(
          child:Container(
            padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
          child : Text(
              'Please recheck details with citizen before submitting form!',
               style: TextStyle(
                 color: Colors.grey[600],
                 letterSpacing: 1.5,
                 fontSize: 20,
               )
          ) 
          )
        ),
              Container(
              padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
              child:Column( 
              children: <Widget>[
              TextFormField(
                decoration:  InputDecoration(  
                  fillColor: Colors.blueAccent,
                  icon:  Icon(Icons.person,color:Colors.blueAccent), 
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent)
                  ), 
                  hintText: 'Enter citizen\'s first name',  
                  labelText: 'First Name', 
                  labelStyle: TextStyle(
                    letterSpacing: 2.0,
                    color:Colors.cyanAccent,
                  )

                ),  
              ),  
              TextFormField(
                decoration:  InputDecoration(  
                  fillColor: Colors.blueAccent,
                  icon:  Icon(Icons.person,color:Colors.blueAccent), 
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent)
                  ), 
                  hintText: 'Enter citizen\'s last name',  
                  labelText: 'Last Name', 
                  labelStyle: TextStyle(
                    letterSpacing: 2.0,
                    color:Colors.cyanAccent,
                  )

                ),  
              ),  
              TextFormField(  
                
                decoration:InputDecoration( 
                  focusColor: Colors.blueAccent,
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent)
                  ),
                  icon: const Icon(Icons.phone,color:Colors.blueAccent),  
                  hintText: 'Enter citizen\'s phone number',  
                  labelText: 'Phone',  
                  labelStyle: TextStyle(
                    letterSpacing: 2.0,
                    color:Colors.cyanAccent,
                  )
                ),  
              ),  
              TextFormField( 
                decoration: const InputDecoration(  
                icon: const Icon(Icons.calendar_today,color:Colors.blueAccent),  
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent)
                  ),
                hintText: 'Enter citizens\'s date of birth',  
                labelText: 'Dob', 
                labelStyle: TextStyle(
                    letterSpacing: 2.0,
                    color:Colors.cyanAccent,
                  ) 
                ),  
               ),  
               TextFormField( 
                decoration: const InputDecoration(  
                icon: const Icon(Icons.calendar_today,color:Colors.blueAccent),  
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent)
                  ),
                hintText: 'Enter citizens\'s email address',  
                labelText: 'Email Address', 
                labelStyle: TextStyle(
                    letterSpacing: 2.0,
                    color:Colors.cyanAccent,
                  ) 
                ),  
               ),  
               TextFormField( 
                decoration: const InputDecoration(  
                icon: const Icon(Icons.calendar_today,color:Colors.blueAccent),  
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent)
                  ),
                hintText: 'Enter PHC PhoneNo',  
                labelText: 'PHC PhNo', 
                labelStyle: TextStyle(
                    letterSpacing: 2.0,
                    color:Colors.cyanAccent,
                  ) 
                ),  
               ),  
               TextFormField( 
                decoration: const InputDecoration(  
                icon: const Icon(Icons.calendar_today,color:Colors.blueAccent),  
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent)
                  ),
               hintText: 'Enter CHC PhoneNo',  
                labelText: 'CHC PNo', 
                labelStyle: TextStyle(
                    letterSpacing: 2.0,
                    color:Colors.cyanAccent,
                  ) 
                ),  
               ),  
               /*
               new Row(
                 children:<Widget>[
                      ListView(
                            children: getFormWidget())]), */
               SizedBox(height: 40,),
              
              ],
              )
              ) 
             ], ));  
      
      }  
      /*
      List<Widget> getFormWidget() {
    List<Widget> formWidget = new List();

  formWidget.add(new DropdownButton(
      hint: new Text('Select PHC PhoneNo'),
      items: phcList,
      value: _selectedPHC,
      onChanged: (value) {
        setState(() {
          _selectedPHC = value;
        });
      },
      isExpanded: true,
    ));
    
    return formWidget;
  } */
}