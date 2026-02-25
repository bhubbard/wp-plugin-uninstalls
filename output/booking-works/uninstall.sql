-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_ca_options', 'yith_wcwl_socials_title', 'wc_prd_vendor_options', 'yith_wcwl_add_to_wishlist_text');
DELETE FROM wp_options WHERE option_name LIKE 'contract_snapshot_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_ca_booking_option', '_wp_ca_add_on_list', '_wp_ca_product_type', '_hours_enabled', '_wp_ca_selected_template', 'ppf_status', 'recent_subsription', 'expected_subsription', '_wp_ca_product_sub_type', 'wp_ca_ymd', 'wp_ca_duration_type', 'wp_ca_number_of', 'hours_available', '_regular_price', '_price', '_sale_price', 'wc_productdata_options', '_wp-ca-timezone', 'expected_subsription_pid', 'expected_subsription_fid', 'redeemed');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_ca_booking_option', '_wp_ca_add_on_list', '_wp_ca_product_type', '_hours_enabled', '_wp_ca_selected_template', 'ppf_status', 'recent_subsription', 'expected_subsription', '_wp_ca_product_sub_type', 'wp_ca_ymd', 'wp_ca_duration_type', 'wp_ca_number_of', 'hours_available', '_regular_price', '_price', '_sale_price', 'wc_productdata_options', '_wp-ca-timezone', 'expected_subsription_pid', 'expected_subsription_fid', 'redeemed');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_ca_booking_option', '_wp_ca_add_on_list', '_wp_ca_product_type', '_hours_enabled', '_wp_ca_selected_template', 'ppf_status', 'recent_subsription', 'expected_subsription', '_wp_ca_product_sub_type', 'wp_ca_ymd', 'wp_ca_duration_type', 'wp_ca_number_of', 'hours_available', '_regular_price', '_price', '_sale_price', 'wc_productdata_options', '_wp-ca-timezone', 'expected_subsription_pid', 'expected_subsription_fid', 'redeemed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_ca_booking_option', '_wp_ca_add_on_list', '_wp_ca_product_type', '_hours_enabled', '_wp_ca_selected_template', 'ppf_status', 'recent_subsription', 'expected_subsription', '_wp_ca_product_sub_type', 'wp_ca_ymd', 'wp_ca_duration_type', 'wp_ca_number_of', 'hours_available', '_regular_price', '_price', '_sale_price', 'wc_productdata_options', '_wp-ca-timezone', 'expected_subsription_pid', 'expected_subsription_fid', 'redeemed');

