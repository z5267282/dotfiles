#!/bin/zsh

# from: https://abiram.me/cse-sshfs
_SSHFS_ZID=z5267282
# Your desired mountpoint for your CSE home directory
_SSHFS_CSE_MOUNT="$HOME/cse"

alias csemnt="sshfs -o idmap=user -C ${_SSHFS_ZID}@login${_SSHFS_ZID: -1}.cse.unsw.edu.au: ${_SSHFS_CSE_MOUNT}"
alias cseumount="fusermount -zu ${_SSHFS_CSE_MOUNT}"

function cse() {
    # determine where we are relative to the mountpoint (thanks @ralismark)
    local rel=${PWD##${_SSHFS_CSE_MOUNT}}

    if [ -z "$1" ]; then
        # if we don't have arguments, we give the user a shell on the remote cse machine.
        if [ "$PWD" = "$rel" ]; then
            # in the case that we're not in our mountpoint, provide a shell in their home directory.
            ssh "${_SSHFS_ZID}@login${_SSHFS_ZID: -1}.cse.unsw.edu.au"
        else
            # if within the mountpoint, cd to the equivalent dir on the remote before providing a shell (thanks @ralismark)
            ssh "${_SSHFS_ZID}@login${_SSHFS_ZID: -1}.cse.unsw.edu.au" -t "cd $(printf "%q" "./$rel"); exec \$SHELL -l"
        fi
    else
        # if we have arguments, we have a command to execute.
        if [ "$PWD" = "$rel" ]; then
            # in the case that we're not in our mountpoint, we'll execute in the home directory.
            ssh -qt "${_SSHFS_ZID}@login${_SSHFS_ZID: -1}.cse.unsw.edu.au" "$@"
        else
            # if within the mountpoint, cd to the equivalent dir on the remote before executing (thanks @ralismark)
            ssh "${_SSHFS_ZID}@login${_SSHFS_ZID: -1}.cse.unsw.edu.au" -qt "cd $(printf "%q" "./$rel") && $(printf "%q " "$@")"
        fi
    fi
}
