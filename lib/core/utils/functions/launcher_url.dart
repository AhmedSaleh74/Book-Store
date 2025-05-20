import 'package:url_launcher/url_launcher.dart';

Future<void> customLauncherUrl(context, {required final String imgUrl}) async {
  final Uri url = Uri.parse(imgUrl);
  if (await canLaunchUrl(url)) {
    await launchUrl(url, mode: LaunchMode.externalApplication);
  }
}
