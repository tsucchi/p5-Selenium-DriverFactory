use strict;
use warnings;

use Test::More;
use Selenium::DriverFactory;

## TODO: skip tests if phantomjs is not exist

subtest 'phantomjs binary(returns Selenium::PhantomJS)', sub {
    my $driver = Selenium::DriverFactory->create(
        browser_name => 'phantomjs',
    );
    isa_ok $driver, 'Selenium::PhantomJS';
    ok( $driver->binary );
};

## TODO: fallback driver test

done_testing;
