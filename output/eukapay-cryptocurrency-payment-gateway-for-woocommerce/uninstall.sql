-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_eukapay_settings', 'wc-gateway-eukapay-admin-notice-transient');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_eukapay_ipn_nonce', '_eukapay_transaction_code');
DELETE FROM wp_usermeta WHERE meta_key IN ('_eukapay_ipn_nonce', '_eukapay_transaction_code');
DELETE FROM wp_termmeta WHERE meta_key IN ('_eukapay_ipn_nonce', '_eukapay_transaction_code');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_eukapay_ipn_nonce', '_eukapay_transaction_code');

