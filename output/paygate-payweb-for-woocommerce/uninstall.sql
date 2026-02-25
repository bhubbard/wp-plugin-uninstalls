-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_db_version', 'woocommerce_paygate_settings');
DELETE FROM wp_options WHERE option_name LIKE 'PAYGATE_PAYWEB_RED_%';
DELETE FROM wp_options WHERE option_name LIKE 'PAYGATE_PAYWEB_IPN_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('paygate_error');
DELETE FROM wp_usermeta WHERE meta_key IN ('paygate_error');
DELETE FROM wp_termmeta WHERE meta_key IN ('paygate_error');
DELETE FROM wp_commentmeta WHERE meta_key IN ('paygate_error');

