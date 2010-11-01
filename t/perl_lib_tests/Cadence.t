# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl Cadence.t'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test::More tests => 7;
BEGIN { use_ok('Cadence') };

#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.

ok( $ab = Cadence::CellView::open("perl_lib_tests","SchTest","schematic","r") , "Opened SchTest, Addr: $$ab");
is( $ab->cellname(), "SchTest", "Returned Cell Name is correct");
is( $ab->viewname(), "schematic", "Returned View Name is correct");
is( $ab->mode(), "r", "Returned Mode is correct");
is( $ab->DBUperUU(), 160, "DBUperUU is correct");
is( $ab->UUname() , "inch", "UUname is correct");
