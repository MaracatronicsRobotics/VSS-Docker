# Store desired branch 
REPO_BRANCH=$1

# Fetch and checkout repo to desired branch
git fetch --all
git checkout $REPO_BRANCH
git reset --hard origin/$REPO_BRANCH

# Call compile
sh compile.sh
