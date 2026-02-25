-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('whols_diagnostic_data_notice', 'whols_diagnostic_data_agreed', 'whols_options', 'whols_flush_rewrite_rules_flag', 'whols_installed', 'whols_onboarding', 'woocommerce_myaccount_page_id', 'whols_version', 'whols_do_activation_redirect', 'whols_default_role');
DELETE FROM wp_options WHERE option_name LIKE '%_htiop';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_bar';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_popup';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_redirect';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_data';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_timer';
DELETE FROM wp_options WHERE option_name LIKE '%_htiop_data';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('whols_user_request_meta', 'whols_request_id', '_whols_mark_this_product_as_wholesale_only', '_whols_price_type_1_properties', '_whols_product_visibility', 'whols_role_tax_meta', '_whols_price_type_2_properties', '_price', 'whols_saved_lists', 'whols_test_mode');
DELETE FROM wp_usermeta WHERE meta_key IN ('whols_user_request_meta', 'whols_request_id', '_whols_mark_this_product_as_wholesale_only', '_whols_price_type_1_properties', '_whols_product_visibility', 'whols_role_tax_meta', '_whols_price_type_2_properties', '_price', 'whols_saved_lists', 'whols_test_mode');
DELETE FROM wp_termmeta WHERE meta_key IN ('whols_user_request_meta', 'whols_request_id', '_whols_mark_this_product_as_wholesale_only', '_whols_price_type_1_properties', '_whols_product_visibility', 'whols_role_tax_meta', '_whols_price_type_2_properties', '_price', 'whols_saved_lists', 'whols_test_mode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('whols_user_request_meta', 'whols_request_id', '_whols_mark_this_product_as_wholesale_only', '_whols_price_type_1_properties', '_whols_product_visibility', 'whols_role_tax_meta', '_whols_price_type_2_properties', '_price', 'whols_saved_lists', 'whols_test_mode');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_whols_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_whols_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_whols_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_whols_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%';

