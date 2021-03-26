
class AgeCalculator{
  static var age;
  AgeCalculator(int y){
    print("Enter your birth year :");
    int birthYear = y;
    age = DateTime.now().year - birthYear;
  }
}