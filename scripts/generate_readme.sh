#!/usr/bin/env bash

export overview="../docs/_overview.md"
export topics_overview="../docs/topics/_topics_overview.md"
export proposed_projects="../docs/_proposed_projects.md"
export books="../docs/_books.md"
export courses="../docs/_courses.md"
export certification="../docs/_certifications.md"

cat $overview $topics_overview $books $proposed_projects $courses $certification > ../README.md