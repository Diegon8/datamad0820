
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

# Viking


class Viking(Soldier):
    def __init__(self, nombre, vida, fuerza):
        self.name = nombre
        super().__init__(vida, fuerza)
    def attack(Soldier):
        return Soldier.strength
    def receiveDamage(self, dano):
         self.damage = dano
         self.health = self.health - dano
         if self.health > 0:
             return (f'{self.name} has received {self.damage} points of damage')
         else:
             return (f'{self.name} has died in act of combat')
    def battleCry(self):
        return 'Odin Owns You All!'
        

# Saxon

class Saxon(Soldier):
     def __init__(self, vida, fuerza):
            super().__init__(vida, fuerza)
     def attack(Soldier):
         return Soldier.strength
     def receiveDamage(self, dano):
         self.damage = dano
         self.health = self.health - dano
         if self.health > 0:
             return (f'A Saxon has received {self.damage} points of damage')
         else:
             return ('A Saxon has died in combat')
        

# War

class War:
    def __init__(self):
        




    pass