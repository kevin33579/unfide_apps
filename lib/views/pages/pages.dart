import 'dart:async';
import 'dart:io';

import 'package:avatar_glow/avatar_glow.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:unfide_apps/models/models.dart';
import 'package:unfide_apps/services/services.dart';
import 'package:unfide_apps/views/widgets/widgets.dart';

import '../../utils.dart';

part 'login.dart';
part 'register.dart';
part 'splash.dart';
part 'userMainmenu.dart';
part 'userMyAccount.dart';
part 'uploadStory.dart';
part 'payment.dart';
part 'userContactPsikolog.dart';
part 'userJenisCerita.dart';
part 'userListCeritaPendidikan.dart';
part 'userListCeritaKesehatan.dart';
part 'userListCeritaCintaDanLogika.dart';
part 'userListCeritaHoror.dart';
part 'userTambahCeritaPendidikan.dart';
part 'userTambahCeritaCintaDanLogika.dart';
part 'userTambahCeritaKesehatan.dart';
part 'userTambahCeritaHoror.dart';
part 'userProfileSettings.dart';
part 'userPanduanPenggunaan.dart';
part 'userSyaratDanKetentuan.dart';
part 'userPusatBantuan.dart';
