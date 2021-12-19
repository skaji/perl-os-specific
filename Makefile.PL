use strict;
use warnings;

use ExtUtils::MakeMaker;
use POSIX ();

my $arch = (POSIX::uname)[4];

my %prereq;
if ($^O eq "darwin" and $arch eq "x86_64") {
    # $prereq{"Mac::FSEvents"} = 0;
}
if ($^O eq "linux") {
    $prereq{"Linux::Inotify2"} = 0;
    $prereq{"Linux::Socket::Accept4"} = 0;
}

WriteMakefile
    NAME => "_",
    PREREQ_PM => \%prereq,
    META_MERGE => { dynamic_config => 1 },
;
