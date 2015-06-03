function whether_one_arg
    if test (count $argv) -ne 1
        echo "Error: too many or too few argments!"
        echo "Hint: can only input 1 argument."
        return 3
    end
    return 0
end
