enum Direction { north, east, south, west }

class position{
  int x;
  int y;
  Direction direction;
  position(this.x, this.y, this.direction);

  void advanced()
  {
    switch(direction)
    {
      case Direction.north:
      y += 1;
      break;
      case Direction.east:
      x += 1;
      break;
      case Direction.south:
      y -= 1;
      break;
      case Direction.west:
      x -= 1;
      break;
    }
  }

  void turnRight()
  {
    switch(direction)
    {
      case Direction.north:
      direction = Direction.east;
      break;
      case Direction.east:
      direction = Direction.south;
      break;
      case Direction.south:
      direction = Direction.west;
      break;
      case Direction.west:
      direction = Direction.north;
      break;
    }
  }

  void turnLeft()
  {
    switch(direction)
    {
      case Direction.north:
      direction = Direction.west;
      break;
      case Direction.east:
      direction = Direction.north;
      break;
      case Direction.south:
      direction = Direction.east;
      break;
      case Direction.west:
      direction = Direction.south;
      break;
    }
  }

  void finalPosition(String instruction)
  {
    for(int i = 0; i< instruction.length; i++)
    {
      switch(instruction[i])
      {
        case 'A':
        advanced();
        break;
        case 'R':
        turnRight();
        break;
        case 'L':
        turnLeft();
        break;
        default:
        print("invalid instruction");
      }
    }
  }


}
 
void main() {
  // Initial position {7, 3} and facing north
  int x = 2;
  int y = 5;
  Direction direction = Direction.south;

  // Example instruction sequence
  // const instructions = "RAALAL";
  // const instructions = "LAAARALA";
  const instructions = "RRAAAAALA";
  //const instructions = "L";
  position Position = position(x, y, direction);
  // Process the instructions and get the final position and direction
  Position.finalPosition(instructions);

  // Print the final position and direction
  print("Final position: x = ${Position.x} y = ${Position.y}");
  print("Facing:  ${Position.direction.name}");
}
