# ZSH theme
ZSH_THEME="agnoster"

# ZSH-history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# Plugins
plugins=(
    aws
    colored-man-pages
    git
    jump
    sudo
    zsh-autosuggestions
    fast-syntax-highlighting
    autoupdate
)

source $ZSH/oh-my-zsh.sh

# User configuration

## Aliases
alias gpsu="git push --set-upstream origin"

alias ls="ls -alG"

alias modaws="code ~/.aws"

alias modshell="code ~/.zshrc"

alias sls="serverless"

## Scripts

# Test a specific file with jest
# Usage: testit <path/to/file>
testit() {
  if [ "$#" -eq 0 ]; then
    echo "Hol' up"
  else
    npx jest "-i" "test/$*.spec.ts"
  fi
}

# Commit with message for commitlint
# Usage: cmc <message here>
cmc() {
  if [ "$#" -eq 0 ]; then
    echo "Hol' up"
  else
    git commit -m "chore: $*"
  fi
}

# Stage all changed files and commit with a chore message for commitlint
# Usage: acmc <message here>
acmc() {
  if [ "$#" -eq 0 ]; then
    echo "Hol' up"
  else
    git commit -am "chore: $*"
  fi
}

# Commit with message for commitlint
# Usage: cmf <message here>
cmf() {
  if [ "$#" -eq 0 ]; then
    echo "Hol' up"
  else
    git commit -m "feat: $*"
  fi
}

# Stage all changed files and commit with a feat message for commitlint
# Usage: acmf <message here>
acmf() {
  if [ "$#" -eq 0 ]; then
    echo "Hol' up"
  else
    git commit -am "feat: $*"
  fi
}

# Put ssm parameter to the current aws profile
# Usage: ssm <param-name> <value>
ssmput() {
  if [ -z "$AWS_PROFILE" ]
  then
    echo "AWS_PROFILE is not set"
    return
  fi
  aws ssm put-parameter --name $1 --value $2 --type SecureString --no-overwrite
}

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

eval "$(starship init zsh)"