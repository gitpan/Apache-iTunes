# $Id: prereq.t 1425 2004-09-07 23:52:42Z comdog $
use Test::More;
eval "use Test::Prereq";
plan skip_all => "Test::Prereq required to test dependencies" if $@;
prereq_ok();
