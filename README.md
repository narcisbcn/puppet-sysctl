puppet-sysctl
=============

Overview
--------

This module is useful to add/edit/remove sysctl parameters on /etc/sysctl.

Dependencies:
------------

- This module uses augeas. This is already installed by default.

Sample Usage:
-------------

<pre>
sysctl::conf { 'net.ipv4.tcp_timestamps': value => '0' }
sysctl::conf { 'net.ipv4.tcp_wmem': value =>  '4096 1048576 8388608' }
sysctl::conf { 'net.ipv4.tcp_tw_reuse': value => 'absent' }
</pre>
