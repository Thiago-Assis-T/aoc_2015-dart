/// Calculates the floor the instructions take Santa
/// and what position in the instructions Santa first enters the basement.
(int floor, int firstBasement) calculateFloor([String? floors]) {
  int position = 0;
  int firstBasement = 0;
  int currentFloor = 0;
  bool enteredBasement = false;

  if (floors == null) {
    return (currentFloor, firstBasement);
  }

  while (position != floors.length) {
    if (currentFloor < 0 && !enteredBasement) {
      firstBasement = position;
      enteredBasement = true;
    }
    if (floors[position] == '(') {
      currentFloor++;
    } else if (floors[position] == ')') {
      currentFloor--;
    }
    position++;
  }

  return (currentFloor, firstBasement);
}
