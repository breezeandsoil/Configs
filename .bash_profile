export BASH_SILENCE_DEPRECATION_WARNING=1
export CLICOLOR=1
export LSCOLORS=DxFxCxGxBxegedabagaced
export PATH=/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin

export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/sbin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

export MOCK_KMS_STORAGE_PATH=$HOME

SCRIPT_GIT_ENV=$HOME/.42dot/git/export_git_env.sh
SCRIPT_GO_ENV=$HOME/.42dot/golang/export_go_env.sh

if [ -f $SCRIPT_GIT_ENV ];then
	source $SCRIPT_GIT_ENV $(dirname $SCRIPT_GIT_ENV)
fi

if [ -f $SCRIPT_GO_ENV ];then
	source $SCRIPT_GO_ENV
fi
