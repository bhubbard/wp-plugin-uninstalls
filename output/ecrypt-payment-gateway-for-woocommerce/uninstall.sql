-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_ecrypt_payment_gateway_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ecrypt_cid');
DELETE FROM wp_usermeta WHERE meta_key IN ('ecrypt_cid');
DELETE FROM wp_termmeta WHERE meta_key IN ('ecrypt_cid');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ecrypt_cid');

