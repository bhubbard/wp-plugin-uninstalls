-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kiwiz_invoice_list_settings', 'kiwiz_refund_list_settings', 'woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_store_postcode', 'woocommerce_store_city', 'kiwiz_api_token', 'kiwiz_activation_date', 'kiwiz_update_increment_id', 'woocommerce_calc_taxes');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_cron_list';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_customer_user', '_kiwiz_invoice_date', '_kiwiz_refund_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('_customer_user', '_kiwiz_invoice_date', '_kiwiz_refund_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('_customer_user', '_kiwiz_invoice_date', '_kiwiz_refund_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_customer_user', '_kiwiz_invoice_date', '_kiwiz_refund_date');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_certify';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_certify';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_certify';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_certify';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_filename';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_filename';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_filename';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_filename';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_file_hash';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_file_hash';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_file_hash';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_file_hash';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_block_hash';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_block_hash';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_block_hash';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_block_hash';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_certification_date';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_certification_date';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_certification_date';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_certification_date';

