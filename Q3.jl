module Q3

export main

function main()

    target = 600851475143

    for x in 2:target

        if target % x == 0

            #Look at the factor pair
            factor = div(target, x)

            #As factors count down the first found will be the greatest
            if test_prime(factor) == true
                println("$factor is the highest prime factor of $target")
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