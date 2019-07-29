#!/usr/bin/env bash

# to run this in cygwin (after installing dos2unix):
#   ./cygwin_run.sh run_markdown_templates.sh

# ---------------------------------------------------
# Update tables of contents
# ---------------------------------------------------
# For info on doctoc, see https://github.com/thlorenz/doctoc

# To install:
#   npm install -g doctoc

#doctoc --title **Contents** *.md build/ doc/

# ---------------------------------------------------
# Update code examples
# ---------------------------------------------------
# For info on mdsnippets, see https://github.com/SimonCropp/MarkdownSnippets

# install dotnet SDK from http://go.microsoft.com/fwlink/?LinkID=798306&clcid=0x409
# Then install MarkdownSnippets.Tool with
#   dotnet tool install -g MarkdownSnippets.Tool
# To update:
#   dotnet tool update  -g MarkdownSnippets.Tool

dotnet tool update  -g MarkdownSnippets.Tool
mdsnippets --exclude cmake-build --toc-level 5 --readonly true

# Custom Markdown linting
# todo: fix
# ./fix_markdown.sh