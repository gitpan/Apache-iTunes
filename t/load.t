# $Id$

BEGIN {
	@classes = qw(Apache::iTunes);
	}

use Test::More tests => scalar @classes;
	
foreach my $class ( @classes )
	{
	print "bail out! $class did not compile\n" unless use_ok( $class );
	}

