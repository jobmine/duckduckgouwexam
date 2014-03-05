#!/usr/bin/env perl

use strict;
use warnings;
use Test::More;
use DDG::Test::Spice;

ddg_spice_test(
    [qw( DDG::Spice::Uwexam)],
    'uw math 135' => test_spice(
        '/js/spice/math/135',
        call_type => 'include',
        caller => 'DDG::Spice:Uwexam'
    ),
    'uw china 101' => test_spice(
        '/js/spice/china/101',
        call_type => 'include',
        caller => 'DDG::Spice:Uwexam'
    ),
    'uw math249' => test_spice(
        '/js/spice/math/249',
        call_type => 'include',
        caller => 'DDG::Spice:Uwexam'
    ),
    'uwexam econ 101' => test_spice(
        '/js/spice/econ/101',
        call_type => 'include',
        caller => 'DDG::Spice:Uwexam'
    ),
    'cs135 uwexam' => test_spice(
        '/js/spice/cs/135',
        call_type => 'include',
        caller => 'DDG::Spice:Uwexam'
    ),
    'uw ece140' => test_spice(
        '/js/spice/ece/140',
        call_type => 'include',
        caller => 'DDG::Spice:Uwexam'
    )
);

done_testing;

