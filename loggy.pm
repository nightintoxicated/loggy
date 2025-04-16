use strict;
use warnings;


sub loggy {
  my $logfile = shift;
  my $description = shift;  
  my $dir = "loggy_logs";
  die "directory loggy_logs doesnt exist" unless -d $dir;

  open (LOGGYWFH, '>>', "$dir/$logfile.log") or die "LOGGY: could not open log file for $logfile.log\n";
  my @passed = @_;
  foreach my $item (@passed) {
    print LOGGYWFH "$description: $item\n";
  }
  print LOGGYWFH "--------------\n";
}
  close(LOGGYWFH);
1;
