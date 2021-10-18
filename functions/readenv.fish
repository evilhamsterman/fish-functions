function readenv --on-variable PWD
    # Remove variables from previous directory
    if test -r (_enhancd_history_open)[-1]/.env
        while read -l line
            set -l kv (string split -m 1 = -- $line)
            set -eg $kv
        end < (_enhancd_history_open)[-1]/.env
    end
    # Set variables in current directory
    if test -r .env
        while read -l line
            set -l kv (string split -m 1 = -- $line)
            set -gx $kv # this will set the variable named by $kv[1] to the rest of $kv
        end < .env
    end
end
