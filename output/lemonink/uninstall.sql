-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_custom_orders_table_enabled');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_li_watermark_value', '_li_lemoninkable', '_li_master_id', '_downloadable_files');
DELETE FROM wp_usermeta WHERE meta_key IN ('_li_watermark_value', '_li_lemoninkable', '_li_master_id', '_downloadable_files');
DELETE FROM wp_termmeta WHERE meta_key IN ('_li_watermark_value', '_li_lemoninkable', '_li_master_id', '_downloadable_files');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_li_watermark_value', '_li_lemoninkable', '_li_master_id', '_downloadable_files');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%transaction_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%transaction_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%transaction_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%transaction_id';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%transaction_token';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%transaction_token';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%transaction_token';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%transaction_token';

