-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_weight_unit', 'woocommerce_dimension_unit', 'woocommerce_stock_format', 'woocommerce_tax_display_shop', 'default_product_cat', 'spptb_global_settings', 'spptb_db_setup');
DELETE FROM wp_options WHERE option_name LIKE '%_insights_optin';
DELETE FROM wp_options WHERE option_name LIKE '%_insights_last_notice';
DELETE FROM wp_options WHERE option_name LIKE '%_insights_last_tracking_time';
DELETE FROM wp_options WHERE option_name LIKE '%_insights_skip';
DELETE FROM wp_options WHERE option_name LIKE '%_insights_previously_skip';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'product_table_per_page');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', 'product_table_per_page');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'product_table_per_page');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'product_table_per_page');

