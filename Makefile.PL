#!/usr/bin/perl

use Config;
use ExtUtils::MakeMaker;

WriteMakefile(
    'NAME'	    => 'Win32::Hardlink',
    'VERSION_FROM'  => 'Hardlink.pm',
    'AUTHOR'        => 'Autrijus Tang <autrijus@autrijus.org>',
    'ABSTRACT'      => 'Hard links on Win32',
    'OBJECT'        => join(' ', map "$_$Config{obj_ext}", qw(Hardlink lnw)),
    (ExtUtils::MakeMaker->VERSION >= 6.21) ? (SIGN => 1) : ()
);

1;
