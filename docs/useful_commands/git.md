# Useful git commands
| Command | Description | Reference |
| ------- | ----------- | --------- |
| `git commit --amend` | Amend the most recent commit message (follow with `git push -f` to push to the remote if the commit was already pushed before amending) | [Github](https://help.github.com/articles/changing-a-commit-message/#commit-has-not-been-pushed-online) |
| `git diff --staged` | Compare the staging area (index) to the last commit (same as `git diff --cached`) | [Git](https://git-scm.com/docs/git-diff) |
| `git fetch origin` | Update the local copy of the remote branch (e.g. `origin/master`). Can be followed by `git merge master origin/master` to have the same effect as `git pull origin master` |