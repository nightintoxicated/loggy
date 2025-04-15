use strict;
use warnings;


sub loggy {
  my $logfile = shift;
  my $description = shift;  
  my $dir = "loggy_logs";
  die "directory loggy_logs doesnt exist" unless -d $dir;

  open (WFH, '>>', "$dir/$logfile.log") or die "LOGGY: could not open log file for $dir.log\n";
  my @passed = @_;
  foreach my $item (@passed) {
    print WFH "$description: $item\n";
  }
  print "--------------\n";
}
1;
