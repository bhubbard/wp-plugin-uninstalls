-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pgbw_bkash_token_data', 'pgbw_error_log');
DELETE FROM wp_options WHERE option_name LIKE 'pgbw_bkash_payment_create_response_%';
DELETE FROM wp_options WHERE option_name LIKE 'pgbw_bkash_payment_execute_response_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pgbw_bdt_sale_price', 'pgbw_bdt_price', '_bkash_payment_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('pgbw_bdt_sale_price', 'pgbw_bdt_price', '_bkash_payment_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('pgbw_bdt_sale_price', 'pgbw_bdt_price', '_bkash_payment_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pgbw_bdt_sale_price', 'pgbw_bdt_price', '_bkash_payment_id');

