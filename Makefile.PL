# $Id: Makefile.PL,v 1.3 2002/10/09 05:57:49 comdog Exp $
use ExtUtils::MakeMaker;

my $tests = do {
	local @ARGV = qw(t/test_manifest);
	my $data = join " ", map {chomp; "t/$_" } <>;
	};
	
WriteMakefile
        (
        'NAME'           => 'Test::Env',
        'ABSTRACT'       => 'Test the environment',
        'VERSION_FROM'   => 'lib/Env.pm',
 		'PREREQ_PM'      => {
 			'File::Find::Rule'      => '0',
 			'Test::Builder'         => '0',
 			'Test::Builder::Tester' => '0',
  			'Test::More'            => '0',
			'Test::Pod'             => '0',
 			'Test::Prereq'          => '0',
 			},
        'PM' => {
            'lib/Env.pm'     => '$(INST_LIBDIR)/Env.pm',
			},
 
 		depend => { Makefile => 't/test_manifest' },
        test   => { TESTS    => $tests },
        clean  => { FILES    => 'Test-Env-*' },
        );

