import time

def main():
    
    nums = []

    for x in range(1000):
        
        if is_multiple(x, 3) == True:
            nums.append(x)
        elif is_multiple(x, 5) == True:
            nums.append(x)
        else:
            pass
    
    print(f"Total sum: {sum(nums)}")


def is_multiple(x: int, a: int):

   if x % a == 0:
       return True
   else:
       return False

start = time.time()
main()
end = time.time()
print(start-end)
