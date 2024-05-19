# Load the default .bashrc file.
if [ -f ~/.bashrc_default ]; then
    . ~/.bashrc_default
fi

# Load the .bashrc file customized by the user.
if [ -f ~/.bashrc_customization ]; then
    . ~/.bashrc_customization
fi
