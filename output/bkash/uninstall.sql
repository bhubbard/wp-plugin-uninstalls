-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_softtech_bkash_settings', 'sms-api-url', 'sms-api-username', 'sms-api-password', 'nagad_rq_code_image', 'woocommerce_softtech_nagad_settings', 'roket_rq_code_image', 'woocommerce_softtech_rocket_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bkash_number', '_bkash_transaction', '_nagad_number', '_nagad_transaction', '_rocket_number', '_rocket_transaction');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bkash_number', '_bkash_transaction', '_nagad_number', '_nagad_transaction', '_rocket_number', '_rocket_transaction');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bkash_number', '_bkash_transaction', '_nagad_number', '_nagad_transaction', '_rocket_number', '_rocket_transaction');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bkash_number', '_bkash_transaction', '_nagad_number', '_nagad_transaction', '_rocket_number', '_rocket_transaction');

