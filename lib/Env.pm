# $Id: Env.pm 2299 2007-08-13 02:47:06Z comdog $
package Test::Env;
use strict;

use base qw(Exporter);
use vars qw(@EXPORT $VERSION);

@EXPORT  = qw(env_ok);
$VERSION = 1.08;

use Test::Builder;

my $Test = Test::Builder->new();

=head1 NAME

Test::Env - test the environment

=head1 SYNOPSIS

	use Test::More tests => 1;
	use Test::Env;

	env_ok( 'PERL5LIB', "./blib/lib" );

=head1 DESCRIPTION

=head2 Functions

=over 4

=item env_ok( NAME, VALUE )

Ok if the environment variable NAME is VALUE.

=cut

sub env_ok($$)
	{
	my $name  = shift;
	my $value = shift;

	unless( exists $ENV{$name} )
		{
		$Test->ok(0);
		$Test->diag( "Environment variable [$name] missing!\n",
			"\tExpected [$value]\n" );
		}
	elsif( $ENV{$name} ne $value )
		{
		$Test->ok(0);
		$Test->diag( "Environment variable [$name] has wrong value!\n",
			"\tExpected [$value]\n",
			"\tGot [$ENV{$name}]\n" );
		}
	else
		{
		$Test->ok(1);
		}
	}

=back

=head1 SOURCE AVAILABILITY

This source is part of a SourceForge project which always has the
latest sources in CVS, as well as all of the previous releases.

	http://sourceforge.net/projects/brian-d-foy/

If, for some reason, I disappear from the world, one of the other
members of the project can shepherd this module appropriately.

=head1 AUTHOR

brian d foy, C<< <bdfoy@cpan.org> >>

=head1 COPYRIGHT AND LICENSE

Copyright (c) 2002-2007 brian d foy.  All rights reserved.

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut


"Roscoe";
