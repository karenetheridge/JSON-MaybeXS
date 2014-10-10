use strict;
use warnings FATAL => 'all';

use Test::Without::Module 'Cpanel::JSON::XS';
use Test::More;
use JSON::MaybeXS;

unless ( eval { require JSON::XS; 1 } ) {
    plan skip_all => 'No JSON::XS';
    done_testing;
    exit;
}

is( JSON, 'JSON::XS', 'Correct JSON class' );

is( \&encode_json, \&JSON::XS::encode_json, 'Correct encode_json function' );
is( \&decode_json, \&JSON::XS::decode_json, 'Correct encode_json function' );

require 't/lib/is_bool.pm';

done_testing;
