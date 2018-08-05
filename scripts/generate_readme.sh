#!/usr/bin/env bash

export overview="../docs/overview.md"
export topics_overview="../docs/topics_overview.md"
export proposed_projects="../docs/proposed_projects.md"
export books="../docs/books.md"
export certification="../docs/certifications.md"

cat $overview $topics_overview $proposed_projects $books $certification > ../README.md