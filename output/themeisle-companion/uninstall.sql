-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('obfx_data', 'themeisle_companion_install', 'obfx_new_user', 'hestia_fix_duplicate_widgets', 'sidebars_widgets', 'fresh_site', 'theme_mods_zerif-pro', 'theme_mods_zerif-lite', 'widget_ctup-ads-widget', 'widget_zerif_testim-widget', 'widget_zerif_team-widget', 'widget_color-picker', 'widget_zerif_clients-widget', 'shop_isle_wporg_flag', 'themeisle_companion_flag', 'theme_mods_shop-isle', 'woo_best_products', 'woo_featured_products', 'woo_popular_products', 'woo_product_categories', 'woo_recent_products', 'woo_sale_products', 'widget_recent_entries_plus', 'widget_recent_entries', 'obfx_token', 'obfx_google_accounts_tracking_codes', 'woocommerce_shop_page_id', 'themeisle_sdk_notifications', 'otter_reference_key', 'optimole_reference_key', 'rop_reference_key', 'neve_reference_key', 'hyve_reference_key', 'wp_full_pay_reference_key', 'feedzy_reference_key', 'themeisle_sdk_promotions_otter', 'themeisle_sdk_cache_token', 'themeisle_sdk_feed_items', 'themeisle_sdk_products', 'tsk_attachment_count', 'tsk_posts_count', 'update_plugins', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'obfx_beta_show_%';
DELETE FROM wp_options WHERE option_name LIKE '%_install';
DELETE FROM wp_options WHERE option_name LIKE '%_exp';
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';
DELETE FROM wp_options WHERE option_name LIKE '%_license_data';
DELETE FROM wp_options WHERE option_name LIKE '%_license_status';
DELETE FROM wp_options WHERE option_name LIKE '%_license_plan';
DELETE FROM wp_options WHERE option_name LIKE '%_failed_checks';
DELETE FROM wp_options WHERE option_name LIKE '%_logger_flag';
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%_license';
DELETE FROM wp_options WHERE option_name LIKE 'ti_plugin_info_%';
DELETE FROM wp_options WHERE option_name LIKE '%_pages';
DELETE FROM wp_options WHERE option_name LIKE '%act_err';
DELETE FROM wp_options WHERE option_name LIKE '%_license_data';
DELETE FROM wp_options WHERE option_name LIKE 'ti_theme_info_%';
DELETE FROM wp_options WHERE option_name LIKE '%_warning_rollback';
DELETE FROM wp_options WHERE option_name LIKE 'ti_sdk_pause_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('obfx_ignore_visit_dashboard_notice', '_wp_attachment_image_alt', '_wp_page_template', 'shop_isle_page_description', 'obfx-header-scripts', 'obfx-footer-scripts', 'obfx_menu_icon', 'themeisle_sdk_dismissed_notice_black_friday');
DELETE FROM wp_usermeta WHERE meta_key IN ('obfx_ignore_visit_dashboard_notice', '_wp_attachment_image_alt', '_wp_page_template', 'shop_isle_page_description', 'obfx-header-scripts', 'obfx-footer-scripts', 'obfx_menu_icon', 'themeisle_sdk_dismissed_notice_black_friday');
DELETE FROM wp_termmeta WHERE meta_key IN ('obfx_ignore_visit_dashboard_notice', '_wp_attachment_image_alt', '_wp_page_template', 'shop_isle_page_description', 'obfx-header-scripts', 'obfx-footer-scripts', 'obfx_menu_icon', 'themeisle_sdk_dismissed_notice_black_friday');
DELETE FROM wp_commentmeta WHERE meta_key IN ('obfx_ignore_visit_dashboard_notice', '_wp_attachment_image_alt', '_wp_page_template', 'shop_isle_page_description', 'obfx-header-scripts', 'obfx-footer-scripts', 'obfx_menu_icon', 'themeisle_sdk_dismissed_notice_black_friday');

