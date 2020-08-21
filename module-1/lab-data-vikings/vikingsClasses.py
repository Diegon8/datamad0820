
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
pass

# Viking


class Viking(Soldier):
    def __init__(self, nombre, vida, fuerza)
        self.name = nombre
        super().__init__(vida, fuerza)
    def attack(Soldier)
    def receiveDamage(self, dano):
         self.damage = dano
         self.health = self.health - dano
         
    pass
'''
# Saxon


class Saxon:
    pass

# War


class War:
    pass
'''