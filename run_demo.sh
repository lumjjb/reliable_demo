#!/bin/bash
function terminal {
    echo -n "bash-4.4$ "
}

# Clear original terminal and display our terminal
clear
terminal

# Run a user typed command
echo "kubectl get pods -o wide | grep acme" | python reliable_demo.py

# Example output or you can just cat a file
sleep 1
cat << EOF
NAME                                            READY     STATUS    RESTARTS   AGE
acme-auth-node-deployment-2612283822-8kthp      1/1       Running   0          12d
acme-auth-ukvm-deployment-2344015724-bt8ft      1/1       Running   1          11d
acme-booking-node-deployment-901468994-g7mvj    1/1       Running   0          13d
acme-customer-node-deployment-951608440-rq46k   1/1       Running   0          13d
acme-flight-node-deployment-1554502648-zht6f    1/1       Running   0          13d
acme-main-node-deployment-402404301-cwn1m       1/1       Running   0          13d
EOF
sleep 0.5

# End, hold terminal 
terminal
read 
