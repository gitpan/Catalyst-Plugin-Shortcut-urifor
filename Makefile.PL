#!/usr/bin/perl -w
# vi:ts=4:sw=4

use strict;
use ExtUtils::MakeMaker;

WriteMakefile(
	NAME         => 'Catalyst::Plugin::Shortcut::urifor',
	VERSION_FROM => 'lib/Catalyst/Plugin/Shortcut/urifor.pm',
	ABSTRACT     => 'Shortcut for uri_for method of Catalyst',
	AUTHOR       => 'Oleg Kostyuk (cub.uanic@gmail.com)',
	PREREQ_PM    => { 'Catalyst' => '2.99', },
);

