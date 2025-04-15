use strict;
use warnings;


sub loggy {
  my $logfile = shift;
  my $description = shift;  
  my $dir = "loggy_logs";
  die "directory loggy_logs doesnt exist" unless -d $dir;

  open (WFH, '>>', "$dir/$logfile.log") or die "LOGGY: could not open log file for $logfile.log\n";
  my @passed = @_;
  foreach my $item (@passed) {
    print WFH "$description: $item\n";
  }
  print WFH "--------------\n";
}
  close(WFH);
1;
