function bwunlock -d "Unlock and set the Bitwarden session"
    set bwsession (command bw unlock --raw $argv)
    if test $status = 0
        set -gx BW_SESSION $bwsession
    else
        return 1
    end
end