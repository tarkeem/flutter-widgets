import 'package:flutter/material.dart';

//example registration form
// form,text form filed , key
class forma39 extends StatefulWidget {
  const forma39({Key? key}) : super(key: key);

  @override
  State<forma39> createState() => _forma39State();
}

 enum st{signup,login}
class _forma39State extends State<forma39> {

final GlobalKey<FormState> form_key = GlobalKey();

//dont use it as key for orm: GlobalKey<State<StatefulWidget>> form_key=GlobalKey();

st stat=st.login;

Map info={
  'email':'',
  'pass':'',
};

final  pass=TextEditingController();

void swith(){
if(stat==st.login)
{
  setState(() {
    stat=st.signup;
  });
}
else
{
  setState(() {
    stat=st.login;
  });
}

}

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('form',style: TextStyle(fontSize: 15,color: Colors.black),),

      


      ),

      body: Center(
        child: Form(
          key:form_key ,
          child: SingleChildScrollView( //different result from list view

            child:Column(
              children: [
                
             Padding(
              padding: EdgeInsets.symmetric(horizontal: 100),
                child: TextFormField( //text field does not have validator
              
                    keyboardType: TextInputType.emailAddress,
                  
              
                  validator:(val){
                    if(val==null|| val.isEmpty|| !val.contains('@'))
                    {
                      return 'wrong email';
                    }
                    return null;
                  } ,          
                  onSaved:(val){
                    info['email']=val;
                  } ,
              
                  decoration:InputDecoration(
                    hintText: 'enter email email',
                    label: Text('email'),
                    //enabled: false ,cant click on it
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                    ),

                  ),
              
                ),
              ),
              SizedBox(height: 30,),
              Padding(
              padding: EdgeInsets.symmetric(horizontal: 100),
                child: TextFormField(
                  controller: pass, //to save the value then compare it with next field
              
                  
              
                  validator:(val){
                    if(val==null|| val.isEmpty|| val.length<5)
                    {
                      return 'wrong password';
                    }
                    return null;
                  } ,          
                  onSaved:(val){
                    info['pass']=val;
                  } ,
              
                  decoration:InputDecoration(
                    hintText: 'enter password',
                    label: Text('password'),
                    //enabled: false ,cant click on it
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                    ),

                  ),
              
                ),
              ),
              SizedBox(height: 10,),

              if(stat==st.signup)
                 Padding(
              padding: EdgeInsets.symmetric(horizontal: 100),
                child: TextFormField(
              
                  
              
                  validator:(val){
                    if(val!=pass.text)
                    {
                      return 'not similar password';
                    }
                    return null;
                  } ,       
              
                  decoration:InputDecoration(
                    hintText: 'enter the password',
                    label: Text('confirm the password'),
                    //enabled: false ,cant click on it
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                    ),

                  ),
              
                ),
              ),
              SizedBox(height: 10,),

              ElevatedButton(
                onPressed: submit,
                 child: Text(stat==st.login?'login':'signin'), 
                 ),

                 TextButton(
                  onPressed: swith,
                   child:Text('${stat==st.login?'login':'signin'} instead'),
                   )
          
            ],

          )
          ),
      ),
      )
    );
    
  }
  void submit()
  {
    if(!form_key.currentState!.validate()) //if statment prevent saving without validation,! at first means if validation not correct
      {
      return;
      }

    form_key.currentState!.save();

    print('${info['email']} ${info['pass']}');


  }
}