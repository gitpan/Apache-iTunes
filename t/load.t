# $Id: load.t,v 1.2 2004/09/07 23:52:42 comdog Exp $

BEGIN {
	@classes = qw(Apache::iTunes);
	}

use Test::More tests => scalar @classes;
	
foreach my $class ( @classes )
	{
	print "bail out! $class did not compile\n" unless use_ok( $class );
	}

