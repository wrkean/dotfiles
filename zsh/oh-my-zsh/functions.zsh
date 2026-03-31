nvzsh() {
    nvim ~/.zshrc
}

mkcd() {
    mkdir "$1" && cd "$1"
}

# Stands for "clang-format here". Copies the .clang-format from $HOME into the current directory
clfhr() {
    cp ~/.clang-format .
}

dict() {
    python $DEV/scripts/dictionary.py "$@"
}

cinit() {
    bash $SCRIPTS/c_starter.sh "$@"
}
