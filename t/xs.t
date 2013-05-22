use strict;
use warnings FATAL => 'all';
use if !do { require Cpanel::JSON::XS; 1; }, 'Test::More', skip_all => 'No Cpanel::JSON::XS';

use Test::More 0.88;
use JSON::MaybeXS;

is(JSON, 'Cpanel::JSON::XS', 'Correct JSON class');

is(
    \&encode_json, \&Cpanel::JSON::XS::encode_json,
    'Correct encode_json function'
);

is(
    \&decode_json, \&Cpanel::JSON::XS::decode_json,
    'Correct encode_json function'
);

done_testing;
