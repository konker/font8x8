#!/usr/bin/env perl

use strict;

my $reversebytestr = sub {
    my $bs  = shift(@_);
    return sprintf "%02X", ord pack "B*", scalar reverse sprintf("%b", hex($bs))
};

for (<>) {
    if (my @matches = /\s*{\s*0x([0-9A-Fa-f]{2}),\s*0x([0-9A-Fa-f]{2}),\s*0x([0-9A-Fa-f]{2}),\s*0x([0-9A-Fa-f]{2}),\s*0x([0-9A-Fa-f]{2}),\s*0x([0-9A-Fa-f]{2}),\s*0x([0-9A-Fa-f]{2}),\s*0x([0-9A-Fa-f]{2})\s*}[^\/]*\/\/\s*U\+([0-9A-Fa-f]{4})/g) {
        my $index = $matches[8];
        my @bytes = @matches[0,1,2,3,4,5,6,7];
        my @revbytes = map $reversebytestr->($_), @bytes;
        print "$index:", join("", @revbytes), "\n";
    }
}
