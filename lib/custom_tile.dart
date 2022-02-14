import 'package:flutter/material.dart';

class MyCustomTile extends StatefulWidget {
  final String text;

  const MyCustomTile({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  State<MyCustomTile> createState() => _MyCustomTileState();
}

class _MyCustomTileState extends State<MyCustomTile> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        InkWell(
          onTap: () {
            setState(() => isExpanded = !isExpanded);
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            color: Colors.white,
            height: height * 0.08,
            width: width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      widget.text,
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: isExpanded ? Colors.blue : Colors.black),
                    ),
                    IconButton(
                      icon: isExpanded
                          ? const Icon(
                              Icons.expand_less,
                              color: Colors.blue,
                            )
                          : const Icon(Icons.expand_more),
                      onPressed: null,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        AnimatedAlign(
          heightFactor: isExpanded ? 1.0 : 0.0,
          alignment: isExpanded ? Alignment.center : Alignment.bottomCenter,
          duration: const Duration(seconds: 1),
          child: AnimatedOpacity(
            opacity: isExpanded ? 1 : 0,
            duration: const Duration(milliseconds: 0),
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
              width: width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const FlutterLogo(size: 80.0),
                  const SizedBox(height: 20.0),
                  Row(
                    children: const [
                      Flexible(
                        child: Text(
                          'Mussum Ipsum, cacilds vidis litro abertis. Copo furadis é disculpa de bebadis, arcu quam euismod magna.Detraxit consequat et quo num tendi nada.Admodum accumsan disputationi eu sit. Vide electram sadipscing et per.In elementis mé pra quem é amistosis quis leo. Mussum Ipsum, cacilds vidis litro abertis. Copo furadis é disculpa de bebadis, arcu quam euismod magna.Detraxit consequat et quo num tendi nada.Admodum accumsan disputationi eu sit. Vide electram sadipscing et per.In elementis mé pra quem é amistosis quis leo.',
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
