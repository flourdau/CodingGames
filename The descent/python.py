def find_highest(array):
    index, top = 0, 0

    for i, value in enumerate(array):
        if value > top:
            top = value
            index = i

    return index


while True:
    heights = []

    for _ in range(8):
        mountain_h = int(input())  # represents the height of one mountain.
        heights.append(mountain_h)

    # To debug: print("Debug messages...", file=sys.stderr)
    print(find_highest(heights))  # The index of the mountain to fire on.
    