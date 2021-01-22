import argparse


def arguments():
    parser = argparse.ArgumentParser()

    parser.add_argument('--python', help='option one.')
    parser.add_argument('--bones', help='option two.')

    return parser.parse_args()


def init():
    args = arguments()

    print(args)


if __name__ == '__main__':
    init()
