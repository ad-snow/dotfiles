function fish_prompt
    if contains -- --final-rendering $argv
        echo -n (set_color magenta)'['(date +%T)'] '
    end

    if test -n "$SSH_TTY"
        echo -n (set_color brred)"$USER"(set_color white)'@'(set_color yellow)(prompt_hostname)' '
    end

    echo -n (set_color blue)(prompt_pwd)' '

    set_color -o
    if fish_is_root_user
        echo -n (set_color red)'# '
    end

    echo -n (set_color red)'❯'(set_color yellow)'❯'(set_color green)'❯ '
    set_color --reset
end
