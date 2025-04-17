module Q5

export main

function main()

    x = 20

    while true

        if smallest_multiple(x, 20) == false
            x += 20
        else
            print("$x is the smallest positive number that is evenly divisible by 1 through to 20")
            break
        end
    end
end
            
function smallest_multiple(x::Int , n::Int)

    for i in 1:n

        if x % i != 0
            return false
        end
    end

    return true

end

end