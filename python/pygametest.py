import pygame
from random import randint
from pygame.locals import *

SIZEX, SIZEY = 800, 600

class Square (pygame.sprite.Sprite):
    def __init__(self):
        super(Square, self).__init__()

        self.surf = pygame.Surface((25, 25))

        self.surf.fill((0, 200, 255))
        self.rect = self.surf.get_rect()
        self.x, self.y = randint(1, SIZEX), randint(1, SIZEY)

    def coors(self):
        return self.x, self.y

pygame.init()

screen = pygame.display.set_mode((SIZEX, SIZEY))

square1 = Square()
square2 = Square()
square3 = Square()
square4 = Square()

gameOn = True

while gameOn:
    for event in pygame.event.get():
        if event.type == KEYDOWN:
            if event.key == K_BACKSPACE:
                gameOn = False
        elif event.type == QUIT:
            gameOn = False

    screen.blit(square1.surf, square1.coors())
    screen.blit(square2.surf, square2.coors())
    screen.blit(square3.surf, square3.coors())
    screen.blit(square4.surf, square4.coors())

    pygame.display.flip()

