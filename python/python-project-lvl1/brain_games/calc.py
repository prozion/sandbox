from brain_games.cli_dialog import get_user_answer, compare_answers
import random

min_number = 1
max_number = 100


def evaluate(op, a, b):
    if op == '+':
        return a + b
    elif op == '-':
        return a - b
    elif op == '*':
        return a * b
    else:
        return None


def make_calc_turn():
    a, b = random.sample(range(min_number, max_number), 2)
    op = random.choice("+-*")
    expected_answer = evaluate(op, a, b)
    user_answer = get_user_answer(f"{a} {op} {b}")
    return compare_answers(expected_answer, user_answer)
