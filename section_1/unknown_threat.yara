rule Malicious_ssh {
        meta:
                Author = "@antwanemil"
                Description = "This rule detects the presence of malicious ssh scripts download/execute"
        strings:
                $darkl0rd= "http://darkl0rd.com"
                $rclocal= "rc.local"
                $iptables= "iptables stop"
        condition:
                all of them
}

