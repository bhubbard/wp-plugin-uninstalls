-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_enable_review_rating', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_plugin_activation_errors';
DELETE FROM wp_options WHERE option_name LIKE '%db_version';
DELETE FROM wp_options WHERE option_name LIKE '%db_installed';
DELETE FROM wp_options WHERE option_name LIKE '%plug_was_used';
DELETE FROM wp_options WHERE option_name LIKE '%_full_installed';
DELETE FROM wp_options WHERE option_name LIKE '%_opts_data';
DELETE FROM wp_options WHERE option_name LIKE '%_last__time_contact_send';
DELETE FROM wp_options WHERE option_name LIKE '%welcome_sent';
DELETE FROM wp_options WHERE option_name LIKE '%_unique_stats';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sale_price_dates_from', '_sale_price_dates_to', '_product_attributes', '_wc_price_calculator');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sale_price_dates_from', '_sale_price_dates_to', '_product_attributes', '_wc_price_calculator');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sale_price_dates_from', '_sale_price_dates_to', '_product_attributes', '_wc_price_calculator');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sale_price_dates_from', '_sale_price_dates_to', '_product_attributes', '_wc_price_calculator');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-tour-hst';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-tour-hst';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-tour-hst';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-tour-hst';

