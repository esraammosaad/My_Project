// Container(
//
// height: 100,
// width: double.infinity,
//
//
// decoration: BoxDecoration(
// color: Colors.brown[50],
// borderRadius: BorderRadius.circular(15),
//
// ),
//
// child: Padding(
// padding: const EdgeInsets.all(20.0),
// child: Container(
// width: double.infinity,
//
// child: Row(
//
// mainAxisSize: MainAxisSize.max,
//
//
// children: [
//
// Column(
//
//
// crossAxisAlignment: CrossAxisAlignment.start,
// mainAxisSize: MainAxisSize.max,
//
//
//
//
//
// children: [
//
// Text('${note[index].title}',
//
// style: TextStyle(
//
//
// fontWeight: FontWeight.bold,
// fontSize: 18,
//
//
// ),
//
//
//
// ),
// SizedBox(height: 5,),
// Text('${note[index].description}'),
// SizedBox(height: 5,),
//
// // Text('${note[index].date}',
// //
// //
// //   style: TextStyle(
// //     fontSize: 10,
// //     fontWeight: FontWeight.bold,
// //
// //
// //
// //   ),)
//
// ],
// ),
// SizedBox(width:50 ,),
// IconButton(
//
// onPressed:(){
//
//
// setState(() {
// NoteControl().Delete(note[index].id!);
// Show();
// Show().then((value) {
// note = value;
// });
//
// });
//
// },
// color: Colors.grey,
// icon: Icon(Icons.delete),
//
//
// ),
// ],
// ),
// ),
// ),
//
//
// ),