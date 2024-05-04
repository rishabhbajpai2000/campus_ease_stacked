import 'package:fluttertoast/fluttertoast.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class UploadDocService {
  final User user = Supabase.instance.client.auth.currentUser!;
  final supabase = Supabase.instance.client;

  Future<String> uploadImage(
    var image,
    String imageExtension,
  ) async {
    final imageBytes = await image.readAsBytes();
    final userId = user.id;
    var imagePath = "/$userId/profile";

    await supabase.storage.from('user_data').uploadBinary(imagePath, imageBytes,
        fileOptions:
            FileOptions(upsert: true, contentType: 'image/$imageExtension'));

    Fluttertoast.showToast(
      msg: "Image uploaded successfully",
    );

    return imagePath;
  }

  String? getImageUrl(String imagePath) {
    return supabase.storage.from('user_data').getPublicUrl(imagePath);
  }
}
