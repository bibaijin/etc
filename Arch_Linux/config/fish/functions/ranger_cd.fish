function ranger_cd --description 'Revised Ranger: stay in current dir after quit'
    set -l tempfile '/tmp/chosendir'
    ranger --choosedir="$tempfile"
    set -l current_dir (cat "$tempfile")
    set -l origin_dir (pwd)
    if test \( -f "$tempfile" \) -a \( "$current_dir" != "$origin_dir" \)
        cd "$current_dir"
    end
    rm -f "$tempfile"
end
