
import 'package:cinebyte_network_application/util/appcustomattributes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class single_post_view_page extends StatefulWidget {
  single_post_view_page({super.key});

  @override
  State<single_post_view_page> createState() => _single_post_view_pageState();
}

class _single_post_view_pageState extends State<single_post_view_page> {
  @override
  Widget build(BuildContext context) {
    bool? ischecked = false;
    double width = MediaQuery.of(context).size.width * 0.97;
    double height = MediaQuery.of(context).size.height * 0.6;
    return Scaffold(
      appBar: Custom_appbar_real(title: 'Gallery'),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          ListTile(
            leading: Text(
              'Post',
              style: GoogleFonts.fugazOne(color: Colors.white, fontSize: 18),
            ),
            trailing: IconButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: Text('post'),
                            content: TextFormField(
                              decoration:
                                  InputDecoration(hintText: 'Edit name'),
                            ),
                            actions: [
                              Text('Delete post'),
                              Icon(Icons.delete),
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('Submit'))
                            ],
                          ));
                },
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                )),
          ),
          Container(
            height: height,
            width: double.infinity,
            child: Image.asset(
              'images/aavesham.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_outline,
                    color: Colors.white,
                    size: 30,
                  )),
              IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (context) => Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 34, 37, 45),
                            borderRadius: BorderRadius.circular(20)),
                        height: 500, // Adjust height as needed

                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    labelText: 'Add your comment...'),
                              ),
                            ),
                            // Divider(thickness: 2,color: Colors.black,),

                            Expanded(
                              child: ListView.builder(
                                  itemCount: 5,
                                  itemBuilder: (context, index) {
                                    return ListTile(
                                      title: Text(
                                        'comment  ${index + 1}',
                                        style: GoogleFonts.fugazOne(
                                            color: Colors.white),
                                      ),
                                      trailing: Icon(Icons.favorite_outline),
                                    );
                                    Divider(
                                      thickness: 2,
                                      color: Colors.black,
                                    );
                                  }),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.comment,
                    color: Colors.white,
                    size: 30,
                  )),
              IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (context) => Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 34, 37, 45),
                            borderRadius: BorderRadius.circular(20)),
                        height: 500, // Adjust height as needed

                        child: Column(
                          children: [
                            Padding(
                                padding: const EdgeInsets.all(20),
                                child: Text(
                                  'Share to',
                                  style:
                                      GoogleFonts.fugazOne(color: Colors.white),
                                )),
                            // Divider(thickness: 2,color: Colors.black,),

                            Expanded(
                              child: ListView.builder(
                                  itemCount: 5,
                                  itemBuilder: (context, index) {
                                    return ListTile(
                                      leading: CircleAvatar(),
                                      title: Text(
                                        'user  ${index + 1}',
                                        style: GoogleFonts.fugazOne(
                                            color: Colors.white),
                                      ),
                                      trailing: Checkbox(
                                          value: ischecked,
                                          activeColor: Colors.amber[200],
                                          tristate: true,
                                          onChanged: (bool? newbool) {
                                            setState(() {
                                              ischecked = newbool;
                                            });
                                          }),
                                    );
                                    Divider(
                                      thickness: 2,
                                      color: Colors.black,
                                    );
                                  }),
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Send',
                                  style:
                                      GoogleFonts.fugazOne(color: Colors.white),
                                ))
                          ],
                        ),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.share,
                    color: Colors.white,
                    size: 30,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}

// class commentbox extends StatefulWidget {
//   const commentbox({super.key});

//   @override
//   State<commentbox> createState() => _commentboxState();
// }

// class _commentboxState extends State<commentbox> {
//   @override
//   Widget build(BuildContext context) {

//     }

//   }
// }
// Widget _buildCommentSheet(ScrollController controller) {
//   return Container(
//     color: Colors.yellow,
//     child: ListView(
//       // Allow scrolling content
//       controller: controller,
//       children: [
//         // Your comment sheet content here (e.g., Text field, Submit button)
//         ListTile(title: Text('Comment 1')),
//         ListTile(title: Text('Comment 2')),
//         // ... more content
//       ],
//     ),
//   );
// }
