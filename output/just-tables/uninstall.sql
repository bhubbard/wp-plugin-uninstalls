-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('justtables_diagnostic_data_agreed', 'justtables_diagnostic_data_notice', 'justtables_delete_data_fetch_cache', 'justtables_maybe_later_time', 'justtables_rating_already_rated', 'woocommerce_currency_pos', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'just_tables_installed', 'just_tables_version', 'csf_demo_mode');
DELETE FROM wp_options WHERE option_name LIKE '%_htiop';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_bar';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_popup';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_redirect';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_data';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_timer';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_data';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_jt_product_table_options');
DELETE FROM wp_usermeta WHERE meta_key IN ('_jt_product_table_options');
DELETE FROM wp_termmeta WHERE meta_key IN ('_jt_product_table_options');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_jt_product_table_options');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%';

