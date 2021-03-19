#!/usr/bin/expect -f

spawn bluetoothctl
expect "#"
send "remove DC:2C:26:B9:65:2B\r"
expect "\[DEL\] Device DC:2C:26:B9:65:2B BM30X mouse"
send "scan on\r"
expect "\[NEW\] Device DC:2C:26:B9:65:2B BM30X mouse"
send "scan off\r"
expect "Discovery stopped"
send "pair DC:2C:26:B9:65:2B\r"
expect "\[CHG\] Device DC:2C:26:B9:65:2B Connected: no"
send "connect DC:2C:26:B9:65:2B\r"
expect "\[CHG\] Device DC:2C:26:B9:65:2B ServicesResolved: yes"
send "trust DC:2C:26:B9:65:2B\r"
expect "Changing DC:2C:26:B9:65:2B trust succeeded"
send "exit\r"
expect eof
