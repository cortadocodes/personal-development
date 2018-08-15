# Useful git commands
| Command | Description | Reference |
| ------- | ----------- | --------- |
| `git commit --amend` | Amend the most recent commit (follow with `git push -f` to push to the remote if the commit was already pushed before amending). This can change just the commit message or, if changes are staged, will change the contents of the commit, too | [Github](https://help.github.com/articles/changing-a-commit-message/#commit-has-not-been-pushed-online) |
| `git diff --staged` | Compare the staging area (index) to the last commit (same as `git diff --cached`) | [Git](https://git-scm.com/docs/git-diff) |
| `git fetch origin` | Update the local copy of the remote branch (e.g. `origin/master`). Can be followed by `git merge master origin/master` to have the same effect as `git pull origin master` |
| `git rev-parse --show-toplevel` | Get the absolute path to the top level (root) directory of a git repository | [Git](https://git-scm.com/docs/git-rev-parse)
| `git reset --hard HEAD^` | Remove the last commit |
| `git log --grep keyword` | Show only the commits containing `keyword` in the commit message | "Pro Git" |
| `git log --decorate` | Show the positions of all pointers and tags in the local branch's commit history | "Pro Git" |
| `git reflog` | Show the position of each commit or checkout in relation to HEAD | "Pro Git" |
| `git show HEAD@{n}` | See the commit at the `nth` previous position of HEAD | "Pro Git" |
| `git show branch@{n.time_period.ago}` | Show the state of `branch` at a given point in time (e.g. `1.week.ago`, `3.hours.ago` or even  `yesterday`) | "Pro Git" |
| `git log -g` | Get the git reflog formatted in the same way as the git log | "Pro Git" |
| `commit_id^i` | Refers to the `ith` parent of the commit with hash `commit_id` for `0 <= i <= n`, where `n` is the number of parents the commit has and `i == 0` refers to the commit itself. The first parent is the branch checked out when merging (the branch merged in to) while the rest are the commits of the branches merged in | "Pro Git" |
| `commit_id~i` | Refers to the `ith` successive parent of the commit with hash `commit_id` in the sense that e.g. `ig == 3` refers to the parent of the parent of the parent of the commit | "Pro Git" |
