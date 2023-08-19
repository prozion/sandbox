from brain_games.cli_dialog import compare_answers, get_user_answer
import random

min_number = 2
max_number = 100


def get_gcd(a, b):
    return a if b == 0 else get_gcd(b, a % b)


def make_gcd_turn():
    a, b = random.sample(range(min_number, max_number), 2)
    expected_answer = get_gcd(a, b)
    user_answer = get_user_answer(f"{a} {b}")
    return compare_answers(expected_answer, user_answer)
