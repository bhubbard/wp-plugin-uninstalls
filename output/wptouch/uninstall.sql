-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wptouch_custom_post_types', 'wptouch_multisite_active', 'wptouch-disable-free-newsletter-notice', '_wptouch-disable-theme-incompat-notice', '_wptouch-disable-plugin-incompat-notice', 'bnc_iphone_pages', 'update_plugins', 'wptouch_menus_initialized', 'active_sitewide_plugins', 'wptouch_custom_taxonomies', 'wptouch_license_upgrade_available', '_wptouch_available_cloud_addons', '_wptouch_available_cloud_themes', '_wptouch_language_info', 'update_plugins', '_wptouch_bncid_latest_version', 'wptouch_update_info', 'wptouch_multisite_site_info');
DELETE FROM wp_options WHERE option_name LIKE 'wptouch_customizer_options_%';
DELETE FROM wp_options WHERE option_name LIKE 'wptouch_customizer_initialized_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mobile_page_template', 'wptouch_sc_data', 'wptouch_sc_scripts', 'wptouch_sc_styles', '_wptouch_pro_menu_item_icon', '_wptouch_pro_menu_item_disabled');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mobile_page_template', 'wptouch_sc_data', 'wptouch_sc_scripts', 'wptouch_sc_styles', '_wptouch_pro_menu_item_icon', '_wptouch_pro_menu_item_disabled');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mobile_page_template', 'wptouch_sc_data', 'wptouch_sc_scripts', 'wptouch_sc_styles', '_wptouch_pro_menu_item_icon', '_wptouch_pro_menu_item_disabled');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mobile_page_template', 'wptouch_sc_data', 'wptouch_sc_scripts', 'wptouch_sc_styles', '_wptouch_pro_menu_item_icon', '_wptouch_pro_menu_item_disabled');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wptouch_sc_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wptouch_sc_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wptouch_sc_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wptouch_sc_%';

