import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Column(
       children: [
         ElevatedButton.icon(onPressed: (){
           Navigator.of(context).push(MaterialPageRoute(builder: (context)=> MyListScreen()));
         },
             icon: Icon(Icons.favorite),
             label: Text("Go to my list (${myList.length})",
             style: TextStyle(fontSize: 24),
             ),
         style: ElevatedButton.styleFrom(backgroundColor: Colors.red,padding: EdgeInsets.symmetric(vertical: 20)),),
         SizedBox(height: 15,),
       Expanded(child: Center(
    child: ListView.builder(
      itemCount: movies.length,
      itemBuilder: (_, index){
        final currentMovie = movies[index];
        return Card(
          key:  ValueKey(currentMovie.title),
          color: Colors.amberAccent,
          elevation: 4,
          child: ListTile(
            title: Text(currentMovie.title),
            subtitle: Text(currentMovie.runtime ?? 'N0 information'),
            trailing: IconButton(onPressed: (){}, icon: Icon(icon)),
          ),
        )
      },
    )
    ))
       ],
     ),
   );
  }
}
