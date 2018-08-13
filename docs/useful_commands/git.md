# Useful git commands
| Command | Description | Reference |
| ------- | ----------- | --------- |
| `git commit --amend` | Amend the most recent commit (follow with `git push -f` to push to the remote if the commit was already pushed before amending). This can change just the commit message or, if changes are staged, will change the contents of the commit, too | [Github](https://help.github.com/articles/changing-a-commit-message/#commit-has-not-been-pushed-online) |
| `git diff --staged` | Compare the staging area (index) to the last commit (same as `git diff --cached`) | [Git](https://git-scm.com/docs/git-diff) |
| `git fetch origin` | Update the local copy of the remote branch (e.g. `origin/master`). Can be followed by `git merge master origin/master` to have the same effect as `git pull origin master` |
| `git rev-parse --show-toplevel` | Get the absolute path to the top level (root) directory of a git repository | [Git](https://git-scm.com/docs/git-rev-parse)
| `git reset --hard HEAD^` | Remove the last commit |
| `git log --grep keyword` | Show only the commits containing `keyword` in the commit message | "Pro Git" |
| `git log --decorate` | Show the positions of all pointers and tags in the local branch's commit history | "Pro Git"