void main() {
  List<Marin> marins = List.filled(5, Marin());
  Zealot zealot = Zealot('Zealot', 100, 8);

  int round = 0;
  while (zealot.alive) {
    for (Marin marin in marins) {
      if (zealot.alive) {
        marin.attack(zealot);
      }
    }
    round++;
  }

  print('총 $round번의 공격 라운드 후 질럿이 쓰러졌습니다.');
}

abstract class Unit {
  String name;
  int hp;
  int attackPower;

  Unit({ required this.name, required this.hp, required this.attackPower });

  void attack(Unit target);
  void takeDamage(int damage);
  void say();

  bool get alive;
}

class Marin extends Unit {
  Marin():
    super(name: "Marin", hp: 40, attackPower: 6);

  @override
  bool get alive => hp > 0;

  @override
  void attack(Unit target) {
    target.takeDamage(attackPower);
  }

  @override
  void takeDamage(int damage) {
    hp -= damage;
    if (hp < 0) hp = 0;
  }

  @override
  void say() {
    print("한판 붙어볼까 애송이?");
  }
}

class Zealot extends Unit {
  Zealot(String name, int hp, int attackPower):
    super(name: name, hp: hp, attackPower: attackPower);

  @override
  bool get alive => hp > 0;

  @override
  void attack(Unit target) {
    target.takeDamage(attackPower);
  }

  @override
  void takeDamage(int damage) {
    hp -= damage;
    if (hp < 0) hp = 0;
  }

  @override
  void say() {
    print("아이어를 위하여!");
  }
}
