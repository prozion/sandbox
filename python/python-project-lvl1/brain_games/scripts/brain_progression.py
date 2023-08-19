from brain_games.progression import guess_progression_turn
from brain_games.engine import play


def main():
    play(guess_progression_turn, 'What number is missing in the progression?')


if __name__ == '__main__':
    main()
