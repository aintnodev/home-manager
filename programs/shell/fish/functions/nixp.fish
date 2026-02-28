if test (count $argv) -eq 0
    echo "Usage: nixp <package>"
    return 1
end
nix-shell -p $argv --command 'fish -P'
