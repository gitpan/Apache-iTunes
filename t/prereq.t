# $Id: prereq.t,v 1.1.1.1 2002/09/28 22:49:26 comdog Exp $

use Test::More tests => 1;
use Test::Prereq;

print "bail out! Makefile.PL needs help!"
	unless prereq_ok( undef, undef, [qw(Mac::iTunes::FileFormat)]);