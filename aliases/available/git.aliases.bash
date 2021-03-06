cite 'about-alias'
about-alias 'common git abbreviations'

# Aliases

# Add uncommitted and unstaged changes to the last commit
# From http://blogs.atlassian.com/2014/10/advanced-git-aliases/
# Show commits since last pull

alias g='git'
alias ga='git add'
alias gall='git add --all'
alias gap='git add -p'
alias gapa='git add --patch'
alias gau='git add --update'
alias gb='git branch'
alias gba='git branch -a'
alias gbd='git branch -d'
alias gbda='git branch --no-color --merged | command grep -vE "^(\*|\s*(master|develop|dev)\s*$)" | command xargs -n 1 git branch -d'
alias gbl='git blame -b -w'
alias gbnm='git branch --no-merged'
alias gbr='git branch --remote'
alias gbs='git bisect'
alias gbsb='git bisect bad'
alias gbsg='git bisect good'
alias gbsr='git bisect reset'
alias gbss='git bisect start'
alias gbt='git branch --track'
alias gca='git commit -v -a'
alias gca='git commit -v -a'
alias gcaa="git commit -a --amend -C HEAD"
alias gcam='git commit -a -m'
alias gcamd='git commit -v --amend'
alias gcan!='git commit -v -a --no-edit --amend'
alias gcans!='git commit -v -a -s --no-edit --amend'
alias gcb='git checkout -b'
alias gcd='git checkout develop'
alias gcf='git config --list'
alias gci='git commit --interactive'
alias gcl='git clone --recursive'
alias gclean='git clean -fd'
alias gcm='git commit -v'
alias gcmsg='git commit -m'
alias gcn='git commit -v --no-edit --amend'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcount='git shortlog -sn'
alias gcp='git cherry-pick'
alias gcpa='git cherry-pick --abort'
alias gcpc='git cherry-pick --continue'
alias gcs='git commit -S'
alias gct='git checkout --track'
alias gd='git diff'
alias gdca='git diff --cached'
alias gdct='git describe --tags `git rev-list --tags --max-count=1`'
alias gdel='git branch -D'
alias gdt='git diff-tree --no-commit-id --name-only -r'
alias gdv='git diff -w "$@" | vim -R -'
alias gdw='git diff --word-diff'
alias gexport='git archive --format zip --output'
alias gfap='git fetch --all --prune'
alias gfapt='git fetch --all --prune --tags'
alias gfaptv='git fetch --all --prune --tags --verbose'
alias gfapv='git fetch --all --prune --verbose'
alias gfomu='git fetch origin -v; git fetch upstream -v; git merge upstream/master'
alias ggsup='git branch --set-upstream-to=origin/$(git_current_branch)'
alias gignore='git update-index --assume-unchanged'
alias gignored='git ls-files -v | grep "^[[:lower:]]"'
alias git-svn-dcommit-push='git svn dcommit && git push github master:svntrunk'
alias gk='\gitk --all --branches'
alias gke='\gitk --all $(git log -g --pretty=%h)'
alias glg="git log --graph --pretty=format:'%C(bold)%h%Creset%C(magenta)%d%Creset %s %C(yellow)<%an> %C(cyan)(%cr)%Creset' --abbrev-commit --date=relative"
alias glog='git log --oneline --decorate --graph'
alias gloga='git log --oneline --decorate --graph --all'
alias glogga='git log --graph --decorate --all'
alias glogm='git log --graph --max-count=10'
alias glogp="git log --graph --pretty='%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glogp='git log --stat -p'
alias glogs="git shortlog -sn"
alias glogs='git log --stat'
alias glola="git log --graph --pretty='%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all"
alias gm='git merge'
alias gmom='git merge origin/master'
alias gmt='git mergetool --no-prompt'
alias gmtvim='git mergetool --no-prompt --tool=vimdiff'
alias gmum='git merge upstream/master'
alias gnew="git log HEAD@{1}..HEAD@{0}"
alias gphc='git push origin $(git_current_branch)'
alias gplc='git pull origin $(git_current_branch)'
alias gpoat='git push origin --all && git push origin --tags'
alias gpom='git push origin master'
alias gpp='git pull && git push'
alias gpr='git pull --rebase'
alias gpristine='git reset --hard && git clean -dfx'
alias gpristine='git reset --hard && git clean -dfx'
alias gpsup='git push --set-upstream origin $(git_current_branch)'
alias gpu='git push --set-upstream'
alias gpu='git push upstream'
alias gpull='git pull'
alias gpum='git pull upstream master'
alias gpush='git push'
alias gpv='git push -v'
alias gr='git remote'
alias gra='git remote add'
alias grb='git rebase'
alias grba='git rebase --abort'
alias grbc='git rebase --continue'
alias grbi='git rebase -i'
alias grbm='git rebase master'
alias grbs='git rebase --skip'
alias grt='cd $(git rev-parse --show-toplevel || echo ".")'
alias gru='git reset --'
alias grup='git remote update'
alias grv='git remote -v'
alias gsbmi='git submodule init'
alias gsbmu='git submodule update --init --recursive'
alias gsbmu='git submodule update'
alias gsps='git show --pretty=short --show-signature'
alias gst='git status'
alias gsta='git stash save'
alias gstaa='git stash apply'
alias gstb='git status -sb'
alias gstc='git stash clear'
alias gstd='git stash drop'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gsts='git stash show --text'
alias gsts='git status -s'
alias gtg="git tag"
alias gtga="git tag -a"
alias gtgd="git tag -d"
alias gtgl="git tag -l"
alias gtgs='git tag -s'
alias gtgv='git tag | sort -V'
alias guica='git gui citool --amend'
alias guict='git gui citool'
alias gunignore='git update-index --no-assume-unchanged'
alias gunwip='git log -n 1 | grep -q -c "\-\-wip\-\-" && git reset HEAD~1'
alias gup='git fetch && git rebase'
alias gup='git pull --rebase'
alias gupv='git pull --rebase -v'
alias gus='git reset HEAD'
alias gw="git whatchanged"
alias gwch='git whatchanged -p --abbrev-commit --pretty=medium'
alias gwip='git add -A; git rm $(git ls-files --deleted) 2> /dev/null; git commit --no-verify -m "--wip-- [skip ci]"'



case $OSTYPE in
  darwin*)
    alias gtls="git tag -l | gsort -V"
    ;;
  *)
    alias gtls='git tag -l | sort -V'
    ;;
esac

if [ -z "$EDITOR" ]; then
    case $OSTYPE in
      linux*)
        alias gd='git diff | vim -R -'
        ;;
      darwin*)
        alias gd='git diff'
        ;;
      *)
        alias gd='git diff'
        ;;
    esac
else
    alias gd="git diff | $EDITOR"
fi
