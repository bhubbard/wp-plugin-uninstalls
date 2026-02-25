-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('redbox_key', 'min_price_for_free', 'consumer_key', 'consumer_secret', 'ocwma-first-rating');
DELETE FROM wp_options WHERE option_name LIKE '%ocwmaerror';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_redbox_point_id', '_redbox_point', '_shipping_address_1');
DELETE FROM wp_usermeta WHERE meta_key IN ('_redbox_point_id', '_redbox_point', '_shipping_address_1');
DELETE FROM wp_termmeta WHERE meta_key IN ('_redbox_point_id', '_redbox_point', '_shipping_address_1');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_redbox_point_id', '_redbox_point', '_shipping_address_1');

