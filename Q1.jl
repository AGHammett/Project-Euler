module Q1

export main

function main()
    
    nums = []

    for x in 0:999
        if is_multiple(x, 3) == true
            push!(nums, x)
        elseif is_multiple(x, 5) == true
            push!(nums, x)
        end
    end

    println("Total sum: $(sum(nums))")

end

function is_multiple(x:: Int, a:: Int)

    return x % a == 0

end

end
