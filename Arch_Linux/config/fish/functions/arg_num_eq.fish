function arg_num_eq
    if test (count $argv) -ne (math $argv[1] + 1)
        echo "Error: too many or too few argments!"
        echo "Hint: can only input $argv[1] argument."
        return 3
    end
    return 0
end
