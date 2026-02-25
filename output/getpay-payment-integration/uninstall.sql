-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_getpay_settings');
DELETE FROM wp_options WHERE option_name LIKE 'getpay_field_errors_%';
DELETE FROM wp_options WHERE option_name LIKE 'getpayint_field_errors_%';
DELETE FROM wp_options WHERE option_name LIKE 'getpay_posted_values_%';
DELETE FROM wp_options WHERE option_name LIKE 'getpayint_posted_values_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template');

