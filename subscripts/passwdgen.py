import random as rand
import argparse

numbers = list("0123456789")
letters = list("abcdefghijklmnopqrstuvwxyz")
capital_letters = list("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
specials = list("!@#$%^&*")

chosen_characters = []
passwd_len = int(input("length?"))

parser = argparse.ArgumentParser(description="Random password generator CLI tool")
parser.add_argument("-l", "--length", type=int, default=12)

for i in range(passwd_len):
    choice_type = rand.randint(1, 4)

    if choice_type == 1:
        chosen_characters.append(rand.choice(numbers))

    elif choice_type == 2:
        chosen_characters.append(rand.choice(letters))

    elif choice_type == 3:
        chosen_characters.append(rand.choice(capital_letters))

    elif choice_type == 4:
        chosen_characters.append(rand.choice(specials))

passwd = ''.join(chosen_characters)
print(passwd)
