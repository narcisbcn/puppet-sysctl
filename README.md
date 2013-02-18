puppet-sysctl
=============

Overview
--------

This module is useful for add/edit/remove sysctl parameters on /etc/sysctl. To do that it uses Augeas.

Dependencies:
------------

- This module uses augeas. This is already installed by default.

Usage:
-----

Some examples how to add a parameter which only has one vale, another one with some values and last one to remove entries on /etc/sysctl.conf file

<pre>
sysctl::conf { 'net.ipv4.tcp_timestamps': value => '0' }
sysctl::conf { 'net.ipv4.tcp_wmem': value =>  '4096 1048576 8388608' }
sysctl::conf { 'net.ipv4.tcp_tw_reuse': value => 'absent' }
</pre>
