
# Soldier


class Soldier:
     def __init__(self, health, strength):
         self.vida = health
         self.fuerza = strength
     def attack(self):
         return self.fuerza
     def receiveDamage(self, damage):
         return self.vida - self.damage
pass

# Viking


class Viking:
    pass

# Saxon


class Saxon:
    pass

# War


class War:
    pass
