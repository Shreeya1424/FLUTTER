import 'dart:io';

double calculateAngle(int hours, int minutes) {
  if (hours < 0 || minutes < 0 || hours > 12 || minutes > 59) {
    print("Invalid input");
    return -1;
  }

  if (hours == 12) hours = 0;
  if (minutes == 60) {
    minutes = 0;
    hours += 1;
    if (hours > 12) hours = hours - 12;
  }

  double hourAngle = 0.5 * (hours * 60 + minutes);
  double minuteAngle = 6.0 * minutes;

  double angle = (hourAngle - minuteAngle).abs();

  angle = angle > 180 ? 360 - angle : angle;

  return angle;
}

void main() {
  print("Enter the hours:");
  int hours = int.parse(stdin.readLineSync()!);

  print("Enter the minutes:");
  int minutes = int.parse(stdin.readLineSync()!);

  double angle = calculateAngle(hours, minutes);

  if (angle != -1) {
    print("The angle between the hour and minute hands is: $angle degrees");
  }
}
