# define sysctl::conf
#
# Description: 
#  This definition will add or remove sysctl parameters through augeas
#
# Parameters:
#  [value]: You can set the kernerl parameter passed through the title or remove this with 'absent'.
#  [context]: Augeas path to apply these changes. 
#
# Usage:
#  sysctl::conf { 'net.ipv4.tcp_timestamps': value => '0' }
#  sysctl::conf { 'net.ipv4.tcp_wmem': value =>  '4096 1048576 8388608';
#  sysctl::conf { 'net.ipv4.tcp_tw_reuse': value => 'absent' }

define sysctl::conf ( 
   
   $value,
   $context = '/files/etc/sysctl.conf'

) {
   
   include sysctl::base

   $action = $value ? {
      'absent'  => "rm ${title}",
      default   => "set ${title} \"${value}\""
   }

   augeas { "Sysctl-$title":
      context  => "$context",
      changes  => "$action",
      notify   => Exec['sysctl'],
      require  => Class['augeas'],
   }

} 
