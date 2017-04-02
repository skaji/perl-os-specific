use strict;
use warnings;
use ExtUtils::MakeMaker;

my %prereq;
if ($^O eq "darwin") {
    $prereq{"Mac::FSEvents"} = 0;
}
if ($^O eq "linux") {
    $prereq{"Linux::Inotify2"} = 0;
}

WriteMakefile
    ABSTRACT => "install os specific modules",
    AUTHOR => "Shoichi Kaji",
    LICENSE => "perl",
    NAME => "Acme::OsSpecific",
    PREREQ_PM => \%prereq,
    VERSION => "0.01",
    META_MERGE => {
        dynamic_config => 1,
    },
;
