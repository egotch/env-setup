#Environment run book

Terminal
    download nerdfont
    update font

Bash
    .bashrc > copy
    
Starship
    download binary
    place in ~/.local/bin
    update .bashrc
    	eval "$(~/.local/bin/starship init bash)"
    update .zshrc
    	eval "$(~/.local/bin/starship init zsh)"
    starship template:
		https://starship.rs/presets/nerd-font
		starship preset nerd-font-symbols -o ~/.config/starship.toml
    send ~/.config/starship
	scp -r ~/.config/starship.toml egotkowski@aus-ds-dev-01.q2dc.local:~/.config

ZSH
    install zsh
        wget installer.sh
        pull the repo
        alter installer.sh to skip download step
    install ohmyzsh
        update .zshrc >> eval "$(~/.local/bin/starship init zsh)"
	install extensions:
		git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
		git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    update plugins
		plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
    scp send .oh_my_zsh directory
    scp send .zshrc file
    ssh -t user@host 'zsh -l'
    
chsh -s /bin/bash
chsh -s $(which bash)
chsh -s /bin/zsh

scp -r ~/zshrc egotkowski@aus-ds-dev-01.q2dc.local:~
scp -r ~/.oh-my-zsh egotkowski@aus-ds-dev-01.q2dc.local:~
