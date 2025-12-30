if status is-interactive
    # Commands to run in interactive sessions can go here

    # Environment setup
    # Apply .profile: use this to put fish compatible .profile stuff in
    if test -f ~/.fish_profile
        source ~/.fish_profile
    end
    #
    # Add ~/.local/bin to PATH
    fish_add_path ~/.local/bin

    # Enable the fish greeting
    set -g fish_greeting ""

    # Aliases
    if test -f ~/.config/fish/aliases.fish
        source ~/.config/fish/aliases.fish
    end

    # Enable fastfetch
    #fastfetch

    # The line below is needed to make starship working in the fish shell
    starship init fish | source
end

if not contains /usr/share/fish/vendor_completions.d $fish_complete_path
    set -p fish_complete_path /usr/share/fish/vendor_completions.d
end
