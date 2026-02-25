-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smevai_settings', '_smevai_woocommerce_webhook_added', 'smevai_activation_redirect', 'smevai_woocommerce_rest_keys');
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('purchase_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('purchase_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('purchase_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('purchase_price');

