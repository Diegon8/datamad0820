
# Soldier

import random

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
         self.vikingArmy = []
         self.saxonArmy = []
    def addViking(self, Viking):
         self.vikingArmy.append(Viking)
    def addSaxon(self, Saxon):
        self.saxonArmy.append(Saxon)        
    def vikingAttack(self):
        
        self.saxon=random.choice(self.saxonArmy)
        self.viking=random.choice(self.vikingArmy)
        saxonleft=self.saxon.receiveDamage(self.viking.attack())
        if self.saxon.health<=0:
            self.saxonArmy.remove(self.saxon) 
        return saxonleft  
        
    def saxonAttack(self):
    
        self.saxon=random.choice(self.saxonArmy)
        self.viking=random.choice(self.vikingArmy)
        vikingleft=self.viking.receiveDamage(self.saxon.attack())
        if self.viking.health<=0:
            self.vikingArmy.remove(self.viking)   
        return vikingleft
        
    def showStatus(self):
        if len(self.saxonArmy)==0:
            return 'Vikings have won the war of the century!'
        elif len(self.vikingArmy)==0:
            return 'Saxons have fought for their lives and survive another day...'
        else:
            return 'Vikings and Saxons are still in the thick of battle.'
         