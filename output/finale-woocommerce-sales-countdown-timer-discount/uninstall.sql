-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcct_posts_sample_ids', 'xlp_is_opted', '_site_transient_update_plugins', 'xlplugin_finale_lite_hide_update_notice', 'woocommerce_currency', 'active_sitewide_plugins', 'woocommerce_hold_stock_minutes', 'woocommerce_manage_stock', 'wcct_global_options', 'woocommerce_tax_display_shop', 'xl_admin_notices', 'xl_uninstall_reasons', 'xl_optin_ref', 'woocommerce_default_country', 'woocommerce_calc_taxes', 'woocommerce_enable_guest_checkout', 'xl_track_day', 'WCCT_INSTANCES', 'update_plugins', 'xl_get_modules');
DELETE FROM wp_options WHERE option_name LIKE '%_upsell_displayed';
DELETE FROM wp_options WHERE option_name LIKE '_xl_transient_%';
DELETE FROM wp_options WHERE option_name LIKE 'xl_licenses_%';
DELETE FROM wp_options WHERE option_name LIKE '%_license_active';
DELETE FROM wp_options WHERE option_name LIKE '%license_data';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', '_wcct_campaign_menu_order', 'wcct_rule', '_wcct_product_taxonomy_term_ids', '_stock', '_price', '_wcct_deal_units', '_wcct_settings', '_stock_status', '_manage_stock', '_wcct_current_status_timing', '_sale_price', 'date_expires', 'expiry_date', '_icl_lang_duplicate_of', '_custom_wc_options');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', '_wcct_campaign_menu_order', 'wcct_rule', '_wcct_product_taxonomy_term_ids', '_stock', '_price', '_wcct_deal_units', '_wcct_settings', '_stock_status', '_manage_stock', '_wcct_current_status_timing', '_sale_price', 'date_expires', 'expiry_date', '_icl_lang_duplicate_of', '_custom_wc_options');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', '_wcct_campaign_menu_order', 'wcct_rule', '_wcct_product_taxonomy_term_ids', '_stock', '_price', '_wcct_deal_units', '_wcct_settings', '_stock_status', '_manage_stock', '_wcct_current_status_timing', '_sale_price', 'date_expires', 'expiry_date', '_icl_lang_duplicate_of', '_custom_wc_options');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', '_wcct_campaign_menu_order', 'wcct_rule', '_wcct_product_taxonomy_term_ids', '_stock', '_price', '_wcct_deal_units', '_wcct_settings', '_stock_status', '_manage_stock', '_wcct_current_status_timing', '_sale_price', 'date_expires', 'expiry_date', '_icl_lang_duplicate_of', '_custom_wc_options');

