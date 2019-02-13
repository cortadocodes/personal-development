# Useful git commands
| Command | Description |
| :------ | :---------- |
| `git commit --amend` | Amend the most recent commit. This can change just the commit message or, if changes are staged, will change the contents of the commit, too |
| `git diff --staged` | Compare the staging area (index) to the last commit (same as `git diff --cached`) |
| `git fetch origin` | Update the local copy of the remote branch (e.g. `origin/master`). Can be followed by `git merge master origin/master` to have the same effect as `git pull origin master` |
| `git rev-parse --show-toplevel` | Get the absolute path to the top level (root) directory of a git repository |
| `git reset --hard HEAD^` | Remove the last commit |
| `git log --grep keyword` | Show only the commits containing `keyword` in the commit message |
| `git log --decorate` | Show the positions of all pointers and tags in the local branch's commit history |
| `git log --stat` | Show the number of insertions and deletions of each commit. |
| `git whatchanged` | Show which files changed in each commit. |
| `git reflog` | Show the position of each commit or checkout in relation to HEAD |
| `git show HEAD@{n}` | See the commit at the `nth` previous position of HEAD |
| `git show branch@{n.time_period.ago}` | Show the state of `branch` at a given point in time (e.g. `1.week.ago`, `3.hours.ago` or even  `yesterday`) |
| `git log -g` | Get the git reflog formatted in the same way as the git log |
| `commit_id^i` | Refers to the `ith` parent of the commit with hash `commit_id` for `0 <= i <= n`, where `n` is the number of parents the commit has and `i == 0` refers to the commit itself. The first parent is the branch checked out when merging (the branch merged in to) while the rest are the commits of the branches merged in |
| `commit_id~i` | Refers to the `ith` successive parent of the commit with hash `commit_id` in the sense that e.g. `ig == 3` refers to the parent of the parent of the parent of the commit |
| `git stash` | Stash the current work in progress in the working directory and index so it can be applied and committed later |
| `git stash apply` | Apply work stashed earlier to the current branch |
| `git stash list` | Show all stashes and how to refer to them |
| `git log -S string` | List the commits where the number of occurrences of `string` has changed |
| `git reset --soft commit_id` | "Undo" the commits back to `commit_id` - the branch is rewound back to `commit_id` along with HEAD, while leaving the index and working directory unchanged (i.e. with the same contents as the commits that were undone). The undone commit can be reapplied (albeit with a different hash) by committing at this point |
| `git reset commit_id` | Same as above, but also unstages the "undone" changes while leaving the working directory unchanged (i.e. with the same contents as the commits that were undone) |
| `git reset --hard commit_id` | Same as above, but also removes the "undone" changes from the working directory. All changes in the working directory will be lost. |
| `git rm --cached my_file` | Remove a file from a git repository without deleting the file. |
| `git branch -vv \| grep ': gone]' \| awk '{print $1}' \| xargs git branch -d` | Prune local branches that are fully merged (see [here](https://stackoverflow.com/a/30494276)). |

Working directory unsafe commands:
* `git reset --hard commit_id`
* `git checkout commit_id file`
