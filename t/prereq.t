#$Id: prereq.t 1066 2004-01-22 00:37:47Z comdog $
use Test::More;
eval "use Test::Prereq";
plan skip_all => "Test::Prereq required to test dependencies" if $@;
prereq_ok();
