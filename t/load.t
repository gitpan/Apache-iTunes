# $Id: load.t,v 1.1.1.1 2002/09/28 22:49:26 comdog Exp $

BEGIN {
	use File::Find::Rule;
	@classes = map { my $x = $_;
		$x =~ s|^blib/lib/||;
		$x =~ s|/|::|g;
		$x =~ s|\.pm$||;
		$x;
		} File::Find::Rule->file()->name( '*.pm' )->in( 'blib/lib' );
	$ENV{APACHE_ITUNES_HTML} ||= 'html/iTunes.html';
	$ENV{APACHE_ITUNES_URL}  ||= '/iTunes/';
	$ENV{APACHE_ITUNES}        = 1;
	}

use Test::More tests => scalar @classes;
	
foreach my $class ( @classes )
	{
	print "bail out! $class did not compile\n" unless use_ok( $class );
	}

