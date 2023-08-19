from brain_games.gcd import make_gcd_turn
from brain_games.engine import play


def main():
    play(make_gcd_turn, 'Find the greatest common divisor of given numbers.')


if __name__ == '__main__':
    main()
