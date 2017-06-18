set BRANCH=(git rev-parse --abbrev-ref HEAD)
echo "Publishing branch $BRANCH"
git push -u origin $BRANCH
