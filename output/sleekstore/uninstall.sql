-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('w9ss_addcartnumber', 'w9ss_autocart', 'w9ss_posttype', 'w9ss_usecss', 'w9ss_pageid', 'w9ss_email_from', 'w9ss_currency', 'w9ss_gotocart', 'w9ss_useamount', 'w9ss_unit', 'w9ss_hidenoinv', 'w9ss_payment_methods', 'w9ss_payment_options', 'w9ss_deliveries');
DELETE FROM wp_options WHERE option_name LIKE '%_pageid';
DELETE FROM wp_options WHERE option_name LIKE '%_db_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_w9ss_price', '_w9ss_unit', '_w9ss_inventory', '_w9ss_useinv', '_w9ss_useamount', '_w9ss_limit');
DELETE FROM wp_usermeta WHERE meta_key IN ('_w9ss_price', '_w9ss_unit', '_w9ss_inventory', '_w9ss_useinv', '_w9ss_useamount', '_w9ss_limit');
DELETE FROM wp_termmeta WHERE meta_key IN ('_w9ss_price', '_w9ss_unit', '_w9ss_inventory', '_w9ss_useinv', '_w9ss_useamount', '_w9ss_limit');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_w9ss_price', '_w9ss_unit', '_w9ss_inventory', '_w9ss_useinv', '_w9ss_useamount', '_w9ss_limit');

