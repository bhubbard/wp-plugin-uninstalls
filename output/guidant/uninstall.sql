-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpguidant_guides', 'wpguidant_guide_settings', 'wpguidant_filters', 'wpguidant_filter_settings', 'wpguidant_elements', 'wpguidant_element_settings', 'wpguidant_conditions', 'wpguidant_condition_settings', 'wpguidant_fields', 'wpguidant_field_settings', 'wpguidant_submissions', 'wpguidant_submissions_data', 'wpguidant_results', 'wpguidant_result_settings', 'wpguidant_logics', 'wpguidant_logic_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sale_price', '_regular_price', '_price', '_wc_average_rating', '_stock_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sale_price', '_regular_price', '_price', '_wc_average_rating', '_stock_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sale_price', '_regular_price', '_price', '_wc_average_rating', '_stock_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sale_price', '_regular_price', '_price', '_wc_average_rating', '_stock_status');

