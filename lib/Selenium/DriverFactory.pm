package Selenium::DriverFactory;
use 5.008001;
use strict;
use warnings;

our $VERSION = "0.01";

use Selenium::Remote::Driver;
use Selenium::PhantomJS;

sub create {
    my ($class, %opt) = @_;

    if ( exists $opt{browser_name} && $opt{browser_name} eq 'phantomjs' ) {
        delete $opt{browser_name};
        return Selenium::PhantomJS->new(%opt);
    }
    return Selenium::Remote::Driver->new(%opt);
}


1;
__END__

=encoding utf-8

=head1 NAME

Selenium::DriverFactory - Factory Method for Selenium::Remote::Driver

=head1 SYNOPSIS

    use Selenium::DriverFactory;
    my $driver = Selenium::DriverFactory->create( driver => 'phantomjs' );

=head1 DESCRIPTION

Selenium::DriverFactory is for phantomjs binary driver. Selenium::Web::Driver has constructor method which like this module, but it can't be passed 'use phantomjs binary' option. This module enables to create Selenium::PhantomJS instance using local binary and Selenium::Remote::Driver instance in single method. 

=head1 LICENSE

Copyright (C) Takuya Tsuchida.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

Takuya Tsuchida E<lt>tsucchi@cpan.orgE<gt>

=cut

