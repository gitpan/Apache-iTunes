# $Id: pod.t,v 1.1.1.1 2002/09/28 22:49:26 comdog Exp $
use strict;

use vars qw(@files @scripts);

BEGIN {
	use File::Find::Rule;
	@files = File::Find::Rule->file()->name( '*.pm' )->in( 'blib/lib' );
	}

use Test::Pod tests => scalar @files;

foreach my $file ( @files )
	{
	pod_ok($file);
	}
