import 'dart:ffi';

//import 'package:json_annotation/json_annotation.dart';

// part 'user.g.dart';

class WalletModel {
  final int yourCoins;
  final int totalEarnings;
  final int totalSpendings;
  final int coinsTimeSpent;
  final int coinsDailyCheckIns;
  final int coinsVideoUpload;
  final int coinsFromFans;
  final int coinsEveryTenMinutes;

  WalletModel(
      this.yourCoins,
      this.totalEarnings,
      this.totalSpendings,
      this.coinsTimeSpent,
      this.coinsDailyCheckIns,
      this.coinsVideoUpload,
      this.coinsFromFans,
      this.coinsEveryTenMinutes);
}

// @JsonSerializable()
// class User {
//   final String bio;
//   final String uid;
//   final String username;
//   final String displayName;
//   final List<String>? uploads;
//   final int createdAt;
//   final String role; //user, admin
//   final String? twitterUrl;
//   final List<String>? audioIds;
//   final String? instagramUrl;
//   final String? email;
//   final List<String>? liked;
//   final bool isVerified;
//   final String? phoneNumber;
//   final List<String>? following;
//   final List<String>? followers;

//   User({
//     required this.bio,
//     required this.uid,
//     required this.username,
//     required this.displayName,
//     required this.uploads,
//     required this.createdAt,
//     required this.role,
//     this.twitterUrl,
//     required this.audioIds,
//     this.instagramUrl,
//     this.email,
//     this.liked,
//     required this.isVerified,
//     this.phoneNumber,
//     this.following,
//     this.followers,
//   });

//   // /// Connect the generated [_$UserFromJson] function to the `fromJson`
//   // /// factory.
//   // factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

//   // /// Connect the generated [_$UserFromJson] function to the `toJson` method.
//   // Map<String, dynamic> toJson() => _$UserToJson(this);
// }
