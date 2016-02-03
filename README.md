# NAME

Selenium::DriverFactory - Factory Method for Selenium::Remote::Driver

# SYNOPSIS

    use Selenium::DriverFactory;
    my $driver = Selenium::DriverFactory->create( browser_name => 'phantomjs' );

# DESCRIPTION

Selenium::DriverFactory is for phantomjs binary driver. Selenium::Web::Driver has constructor method which like this module, but it can't be passed 'use phantomjs binary' option. This module enables to create Selenium::PhantomJS instance using local binary and Selenium::Remote::Driver instance in single method. 

# LICENSE

Copyright (C) Takuya Tsuchida.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

Takuya Tsuchida <tsucchi@cpan.org>
