module Q13

export main

function main()

    number = replace(read("Q13_number.txt", String), r"\s+" => "")
    numbers = [parse(BigInt, number[i: i + 49]) for i in 1:50:length(number)]

    #numerical approximation will provide enough accuracy for this problem 
    numbers_first_15 = [parse(BigInt, number[i: i + 14]) for i in 1:50:length(number)]

    sum_first_15 = sum(numbers_first_15)
    print(parse(BigInt, string(sum_first_15)[1:10]))
    
end

end