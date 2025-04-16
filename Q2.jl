module Q2

export main

function main()

    term_a = 1
    term_b = 1
    total = 0

    while term_a + term_b < 4000000
        x = term_a + term_b 
        term_a = term_b
        term_b = x

        if iseven(x) == true
            total += x
        end
    end

    print(total)

end


end