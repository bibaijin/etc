function ln_r --description 'Build link recursively'
    not arg_num_eq 2 $argv; and return 3
    not test -d $argv[1]; and return 4
    if not test -e $argv[2]
      mkdir $argv[2]
    end

    for file in (ls $argv[1])
      # if test -d file
        # ln_r file
      # else
        # ln $argv[1]/file $argv[2]/file
      # end
      if not test -d $file
        ln $argv[1]/$file $argv[2]/$file
      end
    end
end
