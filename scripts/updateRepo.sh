# Store token and desired branch 
GIT_TOKEN=$1
REPO_BRANCH=$2

# Checkout and pull repo
git checkout $REPO_BRANCH
git pull https://$GIT_TOKEN:x-oauth-basic@github.com/MaracatronicsRobotics/Suassuna-VSS.git

# Call compile
sh compile.sh
