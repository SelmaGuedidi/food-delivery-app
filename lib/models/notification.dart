class NotificationItem {
  final String text;
  final String time;
  final bool multiple;
  String text2 = "";
  NotificationItem(this.text, this.time, this.multiple);
  NotificationItem.second(this.text, this.time, this.multiple, this.text2);
}
