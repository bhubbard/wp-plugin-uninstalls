-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_custom_orders_table_enabled', 'ckwc_version', 'ck_code_verifier');
DELETE FROM wp_options WHERE option_name LIKE '%_last_queried';
DELETE FROM wp_options WHERE option_name LIKE '%-review-request';
DELETE FROM wp_options WHERE option_name LIKE '%-review-dismissed';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ckwc_subscription', 'ckwc_purchase_data_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('ckwc_subscription', 'ckwc_purchase_data_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('ckwc_subscription', 'ckwc_purchase_data_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ckwc_subscription', 'ckwc_purchase_data_id');

