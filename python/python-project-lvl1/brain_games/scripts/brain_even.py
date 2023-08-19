from brain_games.even import guess_even_number_turn
from brain_games.engine import play


def main():
    play(guess_even_number_turn,
         'Answer "yes" if the number is even, otherwise answer "no".')


if __name__ == '__main__':
    main()
