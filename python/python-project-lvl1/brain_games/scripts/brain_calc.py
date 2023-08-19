from brain_games.calc import make_calc_turn
from brain_games.engine import play


def main():
    play(make_calc_turn, 'What is the result of the expression?')


if __name__ == '__main__':
    main()
