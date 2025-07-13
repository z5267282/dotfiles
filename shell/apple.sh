# Mac-terminal commands
# we can't exit 0 inside a script that is meant to be sourced
# i.e. this script is eventually sourced via . ~/.zshrc
if uname | grep -Fq Darwin
then
    # disable recent files
    # link: https://stackoverflow.com/questions/34451650/clear-recent-items-in-preview-application-of-mac-os-x
    defaults write com.apple.Preview NSRecentDocumentsLimit 0
    defaults write com.apple.QuickTimePlayerX NSRecentDocumentsLimit 0
fi
