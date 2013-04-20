# Colors for Bash

# Black       0;30     Dark Gray     1;30
# Red         0;31     Light Red     1;31
# Green       0;32     Light Green   1;32
# Brown       0;33     Yellow        1;33
# Blue        0;34     Light Blue    1;34
# Purple      0;35     Light Purple  1;35
# Cyan        0;36     Light Cyan    1;36
# Light Gray  0;37     White         1;37


export PS1='$(git branch &>/dev/null; if [ $? -eq 0 ]; then \
echo "\[\e[0;36m\][GIT: \e[0;31m\]$(basename `pwd`); \e[0;36m\]$(git branch | grep ^*|sed s/\*\ //) \
$(echo `git status` | grep "nothing to commit" > /dev/null 2>&1; if [ "$?" -eq "0" ]; then \
echo "\e[0;32m\]clean"; else \
echo "\e[0;31m\]dirty"; fi)\e[0;33m\]] \$ "; else \
echo "\[\e[0;31m\][\w]\[\e[m\] \$ "; fi) \e[0m\]'

# #  Note that a variable may require special treatment
# #+ if it will be exported.

# DARKGRAY='\e[1;30m'
# #LIGHTRED='\e[1;31m'
# #GREEN='\e[32m'
# #YELLOW='\e[1;33m'
# #LIGHTBLUE='\e[1;34m'
# NC='\e[m'

# PCT="\`if [[ \$EUID -eq 0 ]]; then T='$LIGHTRED' ; else T='$LIGHTBLUE'; fi;
# echo \$T \`"

# #  For "literal" command substitution to be assigned to a variable,
# #+ use escapes and double quotes:
# #+       PCT="\` ... \`" . . .
# #  Otherwise, the value of PCT variable is assigned only once,
# #+ when the variable is exported/read from .bash_profile,
# #+ and it will not change afterwards even if the user ID changes.


# PS1="\n$GREEN[\w] \n$DARKGRAY($PCT\t$DARKGRAY)-($PCT\u$DARKGRAY)-($PCT\!
# $DARKGRAY)$YELLOW-> $NC"

# #  Escape a variables whose value changes:
# #        if [[ \$EUID -eq 0 ]],
# #  Otherwise the value of the EUID variable will be assigned only once,
# #+ as above.

# #  When a variable is assigned, it should be called escaped:
# #+       echo \$T,
# #  Otherwise the value of the T variable is taken from the moment the PCT
# #+ variable is exported/read from .bash_profile.
# #  So, in this example it would be null.

# #  When a variable's value contains a semicolon it should be strong quoted:
# #        T='$LIGHTRED',
# #  Otherwise, the semicolon will be interpreted as a command separator.


# #  Variables PCT and PS1 can be merged into a new PS1 variable:

# PS1="\`if [[ \$EUID -eq 0 ]]; then PCT='$LIGHTRED';
# else PCT='$LIGHTBLUE'; fi;
# echo '\n$GREEN[\w] \n$DARKGRAY('\$PCT'\t$DARKGRAY)-\
# ('\$PCT'\u$DARKGRAY)-('\$PCT'\!$DARKGRAY)$YELLOW-> $NC'\`"

# # The trick is to use strong quoting for parts of old PS1 variable.