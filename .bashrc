# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
source /etc/profile.d/maven.sh
parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\[\e[1;31m\]\u\[\e[1;36m\]\[\033[m\]@JenkinsServer:\[\e[0m\]\[\e[1;32m\][\W]>$(parse_git_branch) \[\e[0m\]"
