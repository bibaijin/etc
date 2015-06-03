function flv2mp3
    for file in $argv
        # echo $file
        ffmpeg -i $file (basename $file .flv).mp3
    end
    rename 正在播放 '' *.mp3
end
