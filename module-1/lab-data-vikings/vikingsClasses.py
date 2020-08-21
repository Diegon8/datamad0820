
# Soldier


class Soldier:
     def __init__(self, vida, fuerza):
         self.health = vida
         self.strength = fuerza
     def attack(self):
         return self.strength
     def receiveDamage(self, dano):
         self.damage = dano
         self.health = self.health - dano
'''pass

# Viking


class Viking:
    pass

# Saxon


class Saxon:
    pass

# War


class War:
    pass
'''