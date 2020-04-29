function loginop
    set -gx OP_SESSION_qumulo (op signin --raw)
end