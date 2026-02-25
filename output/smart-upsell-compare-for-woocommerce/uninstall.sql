-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('no_exists_value', 'wc_settings_tab_smart_upsell_compare_wcsuc_enabled', 'wc_settings_tab_smart_upsell_compare_wcsuc_product', 'wc_settings_tab_smart_upsell_compare_wcsuc_product_cp');

