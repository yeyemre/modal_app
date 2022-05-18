import 'package:flutter/material.dart';

import '../../helper/data_helper.dart';
import '../../models/avatar_model.dart';

class HorizontalListAvatarsWidget extends StatefulWidget {
  const HorizontalListAvatarsWidget({Key? key}) : super(key: key);

  @override
  State<HorizontalListAvatarsWidget> createState() =>
      _HorizontalListAvatarsWidgetState();
}

class _HorizontalListAvatarsWidgetState
    extends State<HorizontalListAvatarsWidget> {
  late List<AvatarModel> _listAvatarModel;

  @override
  void initState() {
    super.initState();

    _listAvatarModel = DataHelper.getAvatarList();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      child: ListView.builder(
          itemCount: _listAvatarModel.length,
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(5),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 75,
                        height: 75,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: _listAvatarModel[index].image,
                            fit: BoxFit.cover,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(38),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 50,
                        left: 50,
                        child: Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: _listAvatarModel[index].logo,
                              fit: BoxFit.cover,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(14)),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Follow',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.brown,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      elevation: 8,
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
