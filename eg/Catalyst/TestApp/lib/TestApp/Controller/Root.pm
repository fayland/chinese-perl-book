package     # hidden from PAUSE
    TestApp::Controller::Root;

use strict;
use warnings;
use parent 'Catalyst::Controller';

#
# Sets the actions in this controller to be registered with no prefix
# so they function identically to actions created in MyApp.pm
#
__PACKAGE__->config->{namespace} = '';

=head1 NAME

TestApp::Controller::Root - Root Controller for TestApp

=head1 DESCRIPTION

[enter your description here]

=head1 METHODS

=cut

=head2 index

=cut

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

    # Hello World
    $c->response->body( $c->welcome_message );
}

sub default :Path {
    my ( $self, $c ) = @_;
    $c->response->body( 'Page not found' );
    $c->response->status(404);
}

use Data::Dumper;
sub test_params :Path('test_params') {
    my ($self, $c) = @_;
   
    my $test = {
        a => $c->req->param('a'),
        b => $c->req->param('b'),
        c => $c->req->param('c'),
    };
    $c->res->body(Dumper(\$test));
}

sub test_params2 :Path('test_params2') {
    my ($self, $c) = @_;
   
    my $test = {
         a => $c->req->params->{'a'},
         b => $c->req->params->{'b'},
         c => $c->req->params->{'c'},
    };
    $c->res->body(Dumper(\$test));
}

=head2 end

Attempt to render a view, if needed.

=cut

sub end : ActionClass('RenderView') {}

=head1 AUTHOR

Catalyst developer

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
