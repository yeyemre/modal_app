import 'package:flutter/cupertino.dart';

import '../models/avatar_model.dart';

class DataHelper {
  static List<AvatarModel> _avatarList = [];

  static void _loadAvatarList() {
    _avatarList = [
      const AvatarModel(
        image: AssetImage('assets/images/model1.jpg'),
        logo: AssetImage('assets/images/chanellogo.jpg'),
      ),
      const AvatarModel(
        image: AssetImage('assets/images/model2.jpg'),
        logo: AssetImage('assets/images/chloelogo.png'),
      ),
      const AvatarModel(
        image: AssetImage('assets/images/model3.jpg'),
        logo: AssetImage('assets/images/louisvuitton.jpg'),
      ),
      const AvatarModel(
        image: AssetImage('assets/images/model1.jpg'),
        logo: AssetImage('assets/images/chanellogo.jpg'),
      ),
      const AvatarModel(
        image: AssetImage('assets/images/model2.jpg'),
        logo: AssetImage('assets/images/chloelogo.png'),
      ),
      const AvatarModel(
        image: AssetImage('assets/images/model3.jpg'),
        logo: AssetImage('assets/images/louisvuitton.jpg'),
      ),
      const AvatarModel(
        image: AssetImage('assets/images/model1.jpg'),
        logo: AssetImage('assets/images/chanellogo.jpg'),
      ),
      const AvatarModel(
        image: AssetImage('assets/images/model2.jpg'),
        logo: AssetImage('assets/images/chloelogo.png'),
      ),
      const AvatarModel(
        image: AssetImage('assets/images/model3.jpg'),
        logo: AssetImage('assets/images/louisvuitton.jpg'),
      ),
    ];
  }

  static List<AvatarModel> getAvatarList() {
    _loadAvatarList();
    return _avatarList;
  }
}
