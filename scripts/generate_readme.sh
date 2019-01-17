#!/usr/bin/env bash

# This script auto-generates the root README for the repository by
# concatenating the component docs files.

repository_root="$(git rev-parse --show-toplevel)"
docs="$repository_root/docs"
projects="$repository_root/projects"

overview="$docs/_overview.md"
proposed_projects="$projects/_projects_overview.md"
topics_overview="$docs/topics/_topics_overview.md"
courses="$docs/_courses.md"
books="$docs/_books.md"
certification="$docs/_certifications.md"

readme="$repository_root/README.md"

cat $overview $proposed_projects $topics_overview $courses $books $certification > $readme
