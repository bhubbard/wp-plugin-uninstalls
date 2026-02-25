-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'alg_wc_custom_cart_info_item_enabled', 'alg_wc_custom_cart_info_enabled', 'alg_wc_custom_cart_info_item_before', 'alg_wc_custom_cart_info_item_after', 'alg_wc_custom_cart_info_content', 'alg_wc_custom_cart_info_hook', 'alg_wc_custom_cart_info_priority', 'alg_wc_custom_cart_info_total_number', 'alg_wc_custom_cart_info_version');
DELETE FROM wp_options WHERE option_name LIKE '%_reset';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('total_sales');
DELETE FROM wp_usermeta WHERE meta_key IN ('total_sales');
DELETE FROM wp_termmeta WHERE meta_key IN ('total_sales');
DELETE FROM wp_commentmeta WHERE meta_key IN ('total_sales');

