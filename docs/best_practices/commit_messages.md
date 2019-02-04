# Git commit messages

## Message structure
A commit messages consists of three distinct parts separated by a blank line: the title, an optional body and an optional 
footer. The layout looks like this:
```
title (type: subject)

body

footer
```

## Components
**Title** - consists of the type of the message and subject.

**Type** - this is contained within the title and can be one of:
* CHO: chore - updating build tasks, package manager configs, etc; no production code change
* CLN: cleaning up e.g. wording of formatting of comments, making explanations more readable; no code change
* DOC: changes to documentation
* ENH: a new feature or enhancement to the code
* FIX: a bug fix
* MRG: a merge commit
* REF: refactoring production code
* REV: reverting a previous code change
* TST: adding tests, refactoring test; no production code change

**Subject** - describe succinctly what the commit does. The subject should:
* be no greater than 50 characters
* begin with a capital letter 
* not end with a period
* be written in the imperative (i.e. describe what the commit does, rather than what it did or is doing e.g. use 
'change'; not 'changed' or 'changes')

**Body** - explain the what and why of a commit, not the how. When writing a body:
 * a blank line between the title and the body is required
 * line length should be limited to no more than 72 characters.

Not all commits are complex enough to warrant a body, therefore it is optional and only used when a commit requires a 
bit of explanation and context.

**Footer** - Use to reference, resolve and close issues and pull requests if necessary.

## Example commit message
```
ENH: Summarize changes in around 50 characters or less

More detailed explanatory text, if necessary. Wrap it to about 72
characters or so. In some contexts, the first line is treated as the
subject of the commit and the rest of the text as the body. The
blank line separating the summary from the body is critical (unless
you omit the body entirely); various tools like `log`, `shortlog`
and `rebase` can get confused if you run the two together.

Explain the problem that this commit is solving. Focus on why you
are making this change as opposed to how (the code explains that).
Are there side effects or other unintuitive consequenses of this
change? Here's the place to explain them.

Further paragraphs come after blank lines.

 - Bullet points are okay, too

 - Typically a hyphen or asterisk is used for the bullet, preceded
   by a single space, with blank lines in between, but conventions
   vary here

If you use an issue tracker, put references to them at the bottom,
like this:

Resolves: #123
See also: #456, #789
```

## References
1) http://udacity.github.io/git-styleguide/