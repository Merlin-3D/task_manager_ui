import 'package:flutter/material.dart';
import 'package:flutter_face_pile/flutter_face_pile.dart';

final List<FaceHolder> faceHolder = [
  FaceHolder(
    id: '1',
    name: 'user 1',
    avatar: const NetworkImage(
        'https://images.pexels.com/photos/1441151/pexels-photo-1441151.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
  ),
  FaceHolder(
    id: '2',
    name: 'user 2',
    avatar: const NetworkImage(
        'https://images.pexels.com/photos/904332/pexels-photo-904332.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
  ),
];

final List<int> time = [9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 7, 8];
