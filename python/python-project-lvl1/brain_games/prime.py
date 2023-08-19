from brain_games.cli_dialog import compare_answers, get_user_answer
import random

min_number, max_number = 3, 99


def is_prime(number):
    i = 2
    while i <= number / 2:
        if number % i == 0:
            return False
        i += 1
    return True


def make_prime_turn():
    number = random.randint(min_number, max_number)
    expected_answer = 'yes' if is_prime(number) else 'no'
    user_answer = get_user_answer(number, 'string')
    return compare_answers(expected_answer, user_answer)
