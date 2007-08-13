# $Id: load.t 1442 2004-09-08 01:23:13Z comdog $
BEGIN {
	@classes = qw(Test::Env);
	}

use Test::More tests => scalar @classes;
	
foreach my $class ( @classes )
	{
	print "bail out! $class could not compile\n" unless use_ok( $class );
	}
