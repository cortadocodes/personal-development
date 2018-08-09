#!/usr/bin/env bash

repository_root="$(git rev-parse --show-toplevel )"
docs="$repository_root/docs"

overview="$docs/_overview.md"
topics_overview="$docs/topics/_topics_overview.md"
proposed_projects="$docs/_proposed_projects.md"
books="$docs/_books.md"
courses="$docs/_courses.md"
certification="$docs/_certifications.md"

cat $overview $topics_overview $books $proposed_projects $courses $certification > ../README.md
