-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simpbeatfe_notice_id', 'default_product_cat', 'simpbeatfe_current_edit', 'simpbeatfe_status', 'simpbeatfe_pr_offset');
DELETE FROM wp_options WHERE option_name LIKE '%_status';
DELETE FROM wp_options WHERE option_name LIKE '%_current_edit';
DELETE FROM wp_options WHERE option_name LIKE '%_offset';
DELETE FROM wp_options WHERE option_name LIKE '%_notice_id';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sale_price', '_price', '_regular_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sale_price', '_price', '_regular_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sale_price', '_price', '_regular_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sale_price', '_price', '_regular_price');

