import time

def main():

    term_a = 1
    term_b = 1
    total = 0

    while term_a + term_b < 4000000:
        x = term_a + term_b 
        term_a = term_b
        term_b = x

        if x % 2 == 0:
            total += x

    print(f"Total: {total}")

start = time.perf_counter()
main()
end = time.perf_counter()

print(f"{end - start: .10f}")