import 'package:beautiflower/src/services/sign_in_with_google.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GoogleSignInButton extends ConsumerWidget {
  const GoogleSignInButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.data == null) {
          return signInButton(ref);
        } else {
          return signOutButton();
        }
      },
    );
  }

  Widget signInButton(WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            onPressed: () => signInWithGoogle(),
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.black54),
                backgroundColor: MaterialStateProperty.all(Colors.white)),
            child: Row(
              children: const [
                Image(
                  height: 18,
                  width: 18,
                  image: AssetImage(
                    "assets/images/g-logo.png",
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Text("구글 로그인", style: TextStyle(fontSize: 16)),
              ],
            ),
          ),
          Text(FirebaseAuth.instance.currentUser?.email ?? "로그인 해 주세요."),
        ],
      ),
    );
  }

  Widget signOutButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            // onPressed: () async => await signOut(),
            onPressed: () async => await FirebaseAuth.instance.signOut(),
            // child: const Text("로그아웃"),
            child: Row(
              children: const [
                Image(
                  height: 18,
                  width: 18,
                  image: AssetImage(
                    "assets/images/g-logo.png",
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Text("로그아웃", style: TextStyle(fontSize: 16)),
              ],
            ),
          ),
          Text(FirebaseAuth.instance.currentUser?.email ?? "로그인 해 주세요."),
        ],
      ),
    );
  }
}
