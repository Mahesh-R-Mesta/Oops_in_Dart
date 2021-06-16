

void main(){
SpaceShuttel atlantis = SpaceShuttel();
atlantis.fly();
// ploymorphism means updating or modifiying functions ,features 
// which already defined in parent class
}
class Plane {
  void fly(){
    print('Jet Engine Started..');
  }
  void altitude(){
    print('going to high');
  }
}

class SpaceShuttel extends Plane{
  @override
  void fly(){
    print('Rocket engine started');
  }
}

class Rocket extends SpaceShuttel { //

}

