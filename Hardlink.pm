package Win32::Hardlink;

use strict;
use vars qw($VERSION @ISA);
use DynaLoader;

@ISA = qw(DynaLoader);
$VERSION = '0.01';

__PACKAGE__->bootstrap($VERSION);

sub import {
    *CORE::GLOBAL::link = __PACKAGE__->can('link');
}

1;

__END__

=head1 NAME

Win32::Hardlink - Hardlink support on Windows

=head1 VERSION

This document describes version 0.01 of Win32::Hardlink, released
September 19, 2004.

=head1 SYNOPSIS

    use Win32::Hardlink;
    link( 'from' => 'to' );

=head1 DESCRIPTION

This module implements the built-in C<link> function for Microsoft Windows.
Currently, it only works for NTFS filesystems.

=head1 SEE ALSO

L<Win32::Symlink>

=head1 AUTHORS

Autrijus Tang E<lt>autrijus@autrijus.orgE<gt>

=head1 COPYRIGHT

Copyright 2004 by Autrijus Tang E<lt>autrijus@autrijus.orgE<gt>.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

See L<http://www.perl.com/perl/misc/Artistic.html>

=cut
