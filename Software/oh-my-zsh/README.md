## Install ho-my-zsh

1. Setup the $PATH environment by following the official documents in the end of execution of the brew install scripts.

    Run these commands in your terminal to add Homebrew to your PATH:

    ```
    echo >> /Users/yourname/.zprofile
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/yourname/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
    ```
2. put the .zshrc in this repsitory to your $HOME directory

3. Follow the installation guide of these plugin: [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) and [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) , see the section for Oh My Zsh