function ssh
    switch $argv[1]
    case "*.local"
        env TERM=xterm /usr/bin/ssh $argv
    case "*.cs.wisc.edu"
    	env TERM=xterm /usr/bin/ssh $argv
    case "*.ibm.com" or "tnet*" or "dumbo*"
        ~/dotfiles/scripts/kerberos_ssh ssh $argv
    case "*"
    	/usr/bin/ssh $argv
    end
end
