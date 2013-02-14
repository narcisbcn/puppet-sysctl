# Class: sysctl::base
#
# Description: 
#  Execute sysctl changes only if some parameter has changed. It requires a simple augeas class 
#  which just install augeas binaries. You can do it inside this class but you can have some duplicate
#  problems later.


class sysctl::base {

   include augeas
	
   exec { '/sbin/sysctl -p':
      alias       => 'sysctl',
      refreshonly => true,
   }

}
