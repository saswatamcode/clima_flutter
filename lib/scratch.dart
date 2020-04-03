import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String task2result = await task2();
  task3(task2result);
}

void task1() {
  String result = 'Task 1 data';
  print('Task one complete');
}

Future task2() async {
  Duration threeSeconds = Duration(seconds: 3);
  String result;
  await Future.delayed(threeSeconds, () {
    result = 'Task 2 data';
    print('Task two complete');
  });
  return result;
}

void task3(String task2Data) {
  String result = 'Task 3 data';
  print('Task three complete with $task2Data');
}
