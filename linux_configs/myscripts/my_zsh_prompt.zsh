
setopt prompt_subst

() {

local PR_USER PR_USER_OP PR_PROMPT PR_HOST

# Check the UID
if [[ $UID -ne 0 ]]; then # normal user
PR_USER='%F{gold}%n%f'
PR_USER_OP='%F{gold}%#%f'
PR_PROMPT='%f➤ %f'
else # root
PR_USER='%F{red}%n%f'
PR_USER_OP='%F{red}%#%f'
PR_PROMPT='%F{red}➤ %f'
fi


local return_code="%(?..%F{red}%? ↵%f)"

local user_host="${PR_USER}%F{cyan} ➤➤"
local current_dir="%B%F{green}%~%f%b"
local git_branch='$(git_prompt_info)'

PROMPT="╭─${user_host} ${current_dir} \$(ruby_prompt_info) ${git_branch}
╰─$PR_PROMPT "
RPROMPT="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%F{cyan}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="› %f"
ZSH_THEME_RUBY_PROMPT_PREFIX="%F{red}‹"
ZSH_THEME_RUBY_PROMPT_SUFFIX="›%f"

}

