# $Id: load.t,v 1.3 2004/09/08 01:23:13 comdog Exp $
BEGIN {
	@classes = qw(Test::Env);
	}

use Test::More tests => scalar @classes;
	
foreach my $class ( @classes )
	{
	print "bail out! $class could not compile\n" unless use_ok( $class );
	}
