from brain_games.prime import make_prime_turn
from brain_games.engine import play


def main():
    play(make_prime_turn,
         'Answer "yes" if given number is prime. Otherwise answer "no".')


if __name__ == '__main__':
    main()
