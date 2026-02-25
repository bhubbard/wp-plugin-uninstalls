-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mp_prep_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_payment_method', '_order_total', 'normal_price', 'special_price', 'quantity', 'unit');
DELETE FROM wp_usermeta WHERE meta_key IN ('_payment_method', '_order_total', 'normal_price', 'special_price', 'quantity', 'unit');
DELETE FROM wp_termmeta WHERE meta_key IN ('_payment_method', '_order_total', 'normal_price', 'special_price', 'quantity', 'unit');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_payment_method', '_order_total', 'normal_price', 'special_price', 'quantity', 'unit');

