if test (count $argv) -eq 1
    zellij attach $argv[1]
else
    set session (zellij ls | sed 's/\x1b\[[0-9;]*m//g' | awk 'END {print $1}')
    if test -n "$session"
        zellij attach "$session"
    else
        zellij -l welcome
    end
end
