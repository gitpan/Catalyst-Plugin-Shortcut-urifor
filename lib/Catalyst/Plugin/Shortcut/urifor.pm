#!/usr/bin/perl -w
# vi:ts=4:sw=4
package Catalyst::Plugin::Shortcut::urifor;

use strict;
use warnings;
use Catalyst;

our $VERSION = "0.01";

=head1 NAME

Catalyst::Plugin::URIFor - shortcut for uri_for method of Catalyst.

=head1 DESCRIPTION

This module's just shortcut, if you don't like type more than needed.

=head1 SYNOPSIS

    # In your application class
    use Catalyst qw/Shortcut::urifor/;


    # Then in your TT template use
    [% Catalyst.urifor(
            'Book', 'list',
            @args?,
            \%query_values?
        )
    %]

    # istead of
    [% Catalyst.uri_for(
            Catalyst.controller('Book').action_for('list'),
            @args?,
            \%query_values?
        )
    %]

=head1 METHODS

=over 4

=item urifor

Shortcut for Catalyst::uri_for, see in SYNOPSIS

=cut

sub urifor
{
    my $self = shift;
    my ( $c, $a, @params ) = @_;

    $self->uri_for( $self->controller($c)->action_for($a), @params );
}

1;

=head1 AUTHOR

Oleg Kostyuk aka CUB L<cub.uanic@gmail.com>

=head1 SEE ALSO

L<Catalyst>

=head1 COPYRIGHT & LICENSE

    Copyright (c) 2007 the aforementioned author(s). All rights
    reserved. This program is free software; you can redistribute
    it and/or modify it under the same terms as Perl itself.

=cut

