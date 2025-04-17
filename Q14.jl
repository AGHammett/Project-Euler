module  Q14

export main

function main()

    longest_sequence = 0
    longest_sequence_index = 0

    sequence_lengths = Dict{Int64, Int64}() #version used memoisation but turned out slower - benefit would be seen in larger search ranges
    sequence_lengths[1] = 0

    for n in 1:999999
        x = n
        operation_count = 0
        path = []

        while !haskey(sequence_lengths, x)

            push!(path, x)

            if iseven(x) == true
                x = x/2
            else
                x = 3x + 1 
            end

            operation_count += 1
        end

        for (i, number) in enumerate(path)
            sequence_lengths[number] = operation_count - i + 1
        end

        if sequence_lengths[n] > longest_sequence
            longest_sequence = sequence_lengths[n]
            longest_sequence_index = n
        end
    end

    print("The longest sequence is $longest_sequence operations which starts at $longest_sequence_index")
end

    
end