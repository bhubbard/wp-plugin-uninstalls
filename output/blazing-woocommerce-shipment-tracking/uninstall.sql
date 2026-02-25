-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bst_option_name', 'active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bst_tracking_number', '_bst_tracking_provider_name', '_bst_tracking_provider', '_bst_tracking_shipdate', 'is_customer_note', '_shipping_postcode', '_billing_postcode', '_shipping_country', '_billing_country');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bst_tracking_number', '_bst_tracking_provider_name', '_bst_tracking_provider', '_bst_tracking_shipdate', 'is_customer_note', '_shipping_postcode', '_billing_postcode', '_shipping_country', '_billing_country');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bst_tracking_number', '_bst_tracking_provider_name', '_bst_tracking_provider', '_bst_tracking_shipdate', 'is_customer_note', '_shipping_postcode', '_billing_postcode', '_shipping_country', '_billing_country');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bst_tracking_number', '_bst_tracking_provider_name', '_bst_tracking_provider', '_bst_tracking_shipdate', 'is_customer_note', '_shipping_postcode', '_billing_postcode', '_shipping_country', '_billing_country');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

