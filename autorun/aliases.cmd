:: https://stackoverflow.com/a/21040825/16195169
@echo off

:: Usability

DOSKEY $=$*
DOSKEY ls=wsl ls $*
DOSKEY mv=wsl mv $*

:: Git

DOSKEY gap=git add -p $*
DOSKEY st=git status
DOSKEY cm=git commit $*
DOSKEY am=git commit --amend $*
DOSKEY amn=git commit --amend --no-edit $*
