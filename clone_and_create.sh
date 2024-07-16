clone_and_cd() {
    REPO_URL="$1"
    DIR_NAME=$(basename "$REPO_URL" .git)
    git clone "$REPO_URL"
    sleep 5
    cd "$DIR_NAME"
    echo "Changed directory to $DIR_NAME."
}
