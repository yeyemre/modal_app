import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/detail_page.dart';

class BodyWidget extends StatefulWidget {
  const BodyWidget({Key? key}) : super(key: key);

  @override
  State<BodyWidget> createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<BodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Material(
            elevation: 4,
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.6,
              child: Column(
                children: [
                  _avatarLayer(),
                  _textLayer(),
                  _picturesLayer(),
                  _labelsLayer(),
                  _dividerLayer(),
                  _buttonsLayer(),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          // Material(
          //   elevation: 4,
          //   borderRadius: const BorderRadius.all(Radius.circular(16)),
          //   child: SizedBox(
          //     width: MediaQuery.of(context).size.width * 0.9,
          //     height: MediaQuery.of(context).size.height * 0.6,
          //     child: Column(
          //       children: [
          //         _avatarLayer(),
          //         _textLayer(),
          //         _picturesLayer(),
          //         _labelsLayer(),
          //         _dividerLayer(),
          //         _buttonsLayer(),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget _avatarLayer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 75,
              height: 75,
              margin: const EdgeInsets.all(16.0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(40)),
                image: DecorationImage(
                  image: AssetImage('assets/images/model1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 60,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Daisy',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '34 mins ago',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_vert),
        ),
      ],
    );
  }

  Widget _textLayer() {
    return const Center(
      child: SizedBox(
        height: 75,
        child: Text(
          'This official website features a ribbed knit zipper jacket that is'
          'modern and stylish. It looks very temparament and is recommend to friends',
          style: TextStyle(
            fontSize: 13,
            color: Colors.grey,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _picturesLayer() {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            child: Hero(
              tag: 'assets/images/modelgrid3.jpg',
              child: Container(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/modelgrid3.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const DetailPage(
                    imgPath: 'assets/images/modelgrid3.jpg');
              }));
            },
          ),
          IntrinsicWidth(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                    child: Hero(
                      tag: 'assets/images/modelgrid2.jpg',
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.4,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/modelgrid2.jpg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                            return const DetailPage(
                                imgPath: 'assets/images/modelgrid2.jpg');
                          }));
                    }),
                const SizedBox(
                  height: 2,
                ),
                InkWell(
                    child: Hero(
                      tag: 'assets/images/modelgrid1.jpg',
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.4,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/modelgrid1.jpg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                            return const DetailPage(
                                imgPath: 'assets/images/modelgrid1.jpg');
                          }));
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _labelsLayer() {
    return Container(
      margin: const EdgeInsets.all(16.0),
      height: MediaQuery.of(context).size.height * 0.04,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.2,
            margin: const EdgeInsets.symmetric(horizontal: 4.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.brown.shade100,
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
            ),
            child: const Text(
              '# Luis Vuitton',
              style: TextStyle(
                fontSize: 10,
                color: Colors.brown,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.2,
            margin: const EdgeInsets.symmetric(horizontal: 4.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.brown.shade100,
              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            ),
            child: const Text(
              '# Chioe',
              style: TextStyle(
                fontSize: 10,
                color: Colors.brown,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _dividerLayer() {
    return const SizedBox(
      height: 10,
      child: Divider(
        color: Colors.black38,
        endIndent: 5,
        indent: 5,
        height: 5,
        thickness: 3,
      ),
    );
  }

  Widget _buttonsLayer() {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Row(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.reply,
                        color: Colors.brown.withOpacity(0.2),
                        size: 30,
                      ),
                    ),
                    const Text(
                      '1.7k',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.comment,
                        color: Colors.brown.withOpacity(0.2),
                        size: 30,
                      ),
                    ),
                    const Text(
                      '325',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 30,
                  ),
                ),
                const Text(
                  '2.3k',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
