-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_currency', 'woocommerce_force_ssl_checkout', 'woocommerce_echeckprocessing_echeck_settings', 'my_notifications');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_email', 'eCheck Processing Reference ID', 'eCheck Processing Transact ID');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_email', 'eCheck Processing Reference ID', 'eCheck Processing Transact ID');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_email', 'eCheck Processing Reference ID', 'eCheck Processing Transact ID');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_email', 'eCheck Processing Reference ID', 'eCheck Processing Transact ID');

