#!/bin/bash

# Function implementation
install_minimal_theme() {
	read -p "Do you want to install the minimal theme for Zsh? (y/n) " answer
	case $answer in
	[Yy]*)
		echo "Installing the minimal theme for Zsh..."
		# Clone the minimal theme
		git clone https://github.com/subnixr/minimal.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/minimal &&
			echo "Minimal theme cloned successfully" ||
			{
				echo "Error: Failed to clone minimal theme."
				exit 1
			}

		# Create a symbolic link for the theme
		ln -s ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/minimal/minimal.zsh-theme ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/minimal.zsh-theme &&
			echo "Symbolic link for minimal theme created." ||
			{
				echo "Error: Failed to create a symbolic link for the minimal theme."
				exit 1
			}

		# Update .zshrc to use minimal theme
		sed -i 's/^ZSH_THEME=.*$/ZSH_THEME="minimal"/' $HOME/.zshrc
		echo "Minimal theme set as default."
		;;
	[Nn]*)
		echo "Skipping minimal theme installation."
		;;
	*)
		echo "Invalid response. Exiting."
		exit 1
		;;
	esac
}

# Call the function
install_minimal_theme
