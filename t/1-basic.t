use strict;
use Test;
BEGIN { plan tests => 3 };

use FindBin;
use File::Spec;
use Win32::Hardlink;

ok(Win32::Hardlink->VERSION);

my $foo = File::Spec->catdir($FindBin::Bin, 'foo');
open FH, "> $foo" or die $!;
print FH "TEST";
close FH;

my $has_link = eval { Win32::Hardlink::link( $foo => "$foo.new" ) };

if (!$has_link) {
    skip(1);
    skip(1);
    exit;
}

ok(-f "$foo.new");

open FH, "< $foo.new" or die $!;
ok(scalar <FH>, "TEST");
close FH;

END {
    unlink "$foo.new";
    unlink $foo;
}
