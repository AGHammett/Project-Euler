module Q12

export main

function main()

    num_divisors = 0
    n = 1
    x = 0

    while num_divisors < 501
        x = div(n * (n + 1), 2)
        num_divisors = count_divisors(x)
        n +=1
    end

    print("$x, the $n triangle number is the first with >500 divisors")

end


function count_divisors(x:: Int)

    count = 0
    for i in 1: isqrt(x) 
        if x % i == 0
            count += (div(x, i) == i) ? 1 : 2
        end
    end

    return count

end

end
