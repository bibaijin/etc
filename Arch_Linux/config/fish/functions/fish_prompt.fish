set -g __fish_git_prompt_show_informative_status 1
set -g __fish_git_prompt_hide_untrackedfiles 1

set -g __fish_git_prompt_color_branch magenta bold
set -g __fish_git_prompt_showupstream "informative"
set -g __fish_git_prompt_char_upstream_ahead "↑" 
set -g __fish_git_prompt_char_upstream_behind "↓" 
set -g __fish_git_prompt_char_upstream_prefix "" 

set -g __fish_git_prompt_char_stagedstate "●" 
set -g __fish_git_prompt_char_dirtystate "✚" 
set -g __fish_git_prompt_char_untrackedfiles "…" 
set -g __fish_git_prompt_char_conflictedstate "✖" 
set -g __fish_git_prompt_char_cleanstate "✔" 

set -g __fish_git_prompt_color_dirtystate cyan 
set -g __fish_git_prompt_color_stagedstate yellow 
set -g __fish_git_prompt_color_invalidstate red 
set -g __fish_git_prompt_color_untrackedfiles $fish_color_normal 
set -g __fish_git_prompt_color_cleanstate green bold

function fish_prompt --description 'Write out the prompt'
    
    set -l last_status $status

    if not set -q __fish_prompt_hostname
        # set -g __fish_prompt_hostname (hostname|cut -d . -f 1)
        set -g __fish_prompt_hostname (hostname)
    end

    if not set -q __fish_prompt_normal
        set -g __fish_prompt_normal (set_color normal)
    end

    switch $USER
        case root
            if not set -q __fish_prompt_cwd
                if set -q fish_color_cwd_root
                    set -g __fish_prompt_cwd (set_color $fish_color_cwd_root)
                else
                    set -g __fish_prompt_cwd (set_color $fish_color_cwd)
                end
            end
            echo -n "$USER@$__fish_prompt_hostname"
            echo -n "$__fish_prompt_cwd" (prompt_pwd) 
            echo -n "$__fish_prompt_normal" '# '
        case '*'
            if not set -q __fish_prompt_cwd
                set -g __fish_prompt_cwd (set_color $fish_color_cwd)
            end
            # user and host
            set_color cyan; echo -n $USER
            set_color white; echo -n @
            set_color yellow; echo -n "$__fish_prompt_hostname "

            # PWD
            echo -n -s "$__fish_prompt_cwd" (prompt_pwd) "$__fish_prompt_normal"

            echo -n (__fish_git_prompt)

            if not test $last_status -eq 0
                set_color $fish_color_error
            end
            echo -n " [$last_status] \$ "
    end
end
