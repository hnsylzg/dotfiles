if status is-interactive
    # Commands to run in interactive sessions can go here

    # Aliases
    if [ -f $HOME/.config/fish/aliases.fish ]
        source $HOME/.config/fish/aliases.fish
    end

    # Enable the fish greeting
    set -U fish_greeting ""

    # Enable neofetch or the custom bash script for getting images in neofetch
    #source ~/.config/neofetch/launch-neofetch.sh
    #neofetch
    fastfetch

    # Enable yay autocomplete in the fish shell
    complete -c yay -f -n __fish_yay_search_packages
    function __fish_yay_search_packages
        eval yay -Ssq $argv
    end

    ## Environment setup
    # Apply .profile: use this to put fish compatible .profile stuff in
    if test -f ~/.fish_profile
        source ~/.fish_profile
    end

    # Add ~/.local/bin to PATH
    if test -d ~/.local/bin
        if not contains -- ~/.local/bin $PATH
            set -p PATH ~/.local/bin
        end
    end

    # The line below is needed to make starship working in the fish shell
    starship init fish | source
end

set -gx EDITOR nvim
