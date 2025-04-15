module Q3

export main

function main()

    target = 600851475143

    for x in target:-1:1

        if target % x == 0
            if test_prime(x) == true
                println("$x is the highest prime factor of $target")
                break
            end
        end
    end

end

function test_prime(num:: Int)

    #If 1 or less number isn't prime
    if num <= 1
        return false
    end

    #2 & 3 primes - can start iterating from 3 after this
    if num == 2 || num == 3
        return true
    end

    #Only iterate up to sqrt of number
    for x in 3:2:isqrt(num)

        if num % x == 0
            return false
        end
    end

    return true
end

end