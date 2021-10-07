#!/bin/env bash

languages=`echo "python java c shell" | tr ' ' '\n'`

selected=`printf "$languages" | fzf`
echo $selected
