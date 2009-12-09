#!/usr/bin/perl

use strict;
use warnings;

use Test::More;

my $garbage = "Debian_CPANTS.txt";

eval "use Test::Kwalitee 1.01; 1" or
      plan skip_all => "Test::Kwalitee 1.01 required to test Kwalitee";

plan skip_all => 'Test::Kwalitee not installed; skipping' if $@;

if (-f $garbage) {
    unlink $garbage or die "Failed to clean up $garbage";
}

__END__