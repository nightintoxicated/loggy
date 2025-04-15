use strict;
use warnings;
use lib '.';
use loggy;

my $logfile = "testlog";
my $description = "test desc";
my @data = "hello, there";
my $moredata = "words";
loggy($logfile, $description, @data, $moredata);



