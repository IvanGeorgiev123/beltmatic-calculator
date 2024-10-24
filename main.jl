using Base.Iterators: product
using DataStructures: Queue, enqueue!, dequeue!

const x = 3708
const max_number = 15

const ADD = true
const SUBTRACT = true
const MULTIPLY = true
const DIVIDE = true
const EXPONENTIATION = true

function allowed_operations(a, b, a_str, b_str)
    operations = []
    if ADD
        push!(operations, (a + b, "($a_str + $b_str)"))
    end
    if SUBTRACT
        push!(operations, (a - b, "($a_str - $b_str)"))
        push!(operations, (b - a, "($b_str - $a_str)"))
    end
    if MULTIPLY
        push!(operations, (a * b, "($a_str * $b_str)"))
    end
    if DIVIDE
        if b != 0
            push!(operations, (div(a, b), "($a_str / $b_str)"))
        end
        if a != 0
            push!(operations, (div(b, a), "($b_str / $a_str)"))
        end
    end
    if EXPONENTIATION
        if a != 1 && b != 1
            push!(operations, (a ^ b, "($a_str ^ $b_str)"))
            push!(operations, (b ^ a, "($b_str ^ $a_str)"))
        end
    end
    return operations
end

function bfs(target, max_number)
    queue = Queue{Tuple{Int, Vector{Int}, Vector{String}, String}}()
    visited = Set{Int}()

    for i in 1:max_number
        if i != 10
            enqueue!(queue, (i, [i], [], string(i)))
            push!(visited, i)
        end
    end

    while !isempty(queue)
        (current_value, path, operations, equation) = dequeue!(queue)

        if current_value == target
            return (path, operations, equation)
        end

        for i in 1:max_number
            if i == 10
                continue
            end
            for (new_value, operation) in allowed_operations(current_value, i, equation, string(i))
                if new_value == target
                    return (vcat(path, i, new_value), vcat(operations, operation), operation)
                end

                if new_value > 0 && new_value <= target && !(new_value in visited)
                    enqueue!(queue, (new_value, vcat(path, i), vcat(operations, operation), operation))
                    push!(visited, new_value)
                end
            end
        end
    end

    return nothing
end

solution = bfs(x, max_number)

if solution !== nothing
    (path, operations, equation) = solution
    println("Final equation: ", equation)
else
    println("No solution found to reach ", x)
end
