#!/usr/bin/env bash

# This script auto-generates the root README for the repository by
# concatenating the component docs files.

repository_root="$(git rev-parse --show-toplevel)"
docs="$repository_root/docs"

overview="$docs/_overview.md"
topics_overview="$docs/topics/_topics_overview.md"
proposed_projects="$docs/_proposed_projects.md"
courses="$docs/_courses.md"
books="$docs/_books.md"
certification="$docs/_certifications.md"

readme="$repository_root/README.md"

cat $overview $topics_overview $proposed_projects $courses $books $certification > $readme
