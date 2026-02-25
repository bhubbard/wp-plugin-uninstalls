-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_shop_page_id', 'boldgrid_api_key', 'boldgrid_install_options', 'boldgrid_onboarding_videos', 'boldgrid_staging_stylesheet', 'boldgrid_attribution', 'boldgrid_site_hash', 'bg_connect_configs', 'bglib_configs', 'boldgrid_reseller', 'boldgrid_connect_hide_menu', 'boldgrid_settings', 'boldgrid_plugin_page_notices', '_transient_timeout_boldgrid_plugin_information', 'boldgrid_backup_settings', 'bglib_activity', 'bglib_rating_prompt', 'boldgrid_api_data', 'boldgrid_available', 'bg_license_data', 'boldgrid_plugins_filtered', 'update_plugins', 'boldgrid_plugin_information', 'update_themes', 'boldgrid_theme_information', 'random_seed', 'boldgrid_theme_data', 'boldgrid_plugins', 'boldgrid_wporg_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'theme_mods_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('boldgrid_hide_page_title', '_wp_page_template', 'boldgrid_in_page_containers', 'dismissed_wp_pointers', '_bgppb_default_editor', 'meta-box-order_dashboard', 'bglibDashboardOrder', 'boldgrid_dismissed_admin_notices');
DELETE FROM wp_usermeta WHERE meta_key IN ('boldgrid_hide_page_title', '_wp_page_template', 'boldgrid_in_page_containers', 'dismissed_wp_pointers', '_bgppb_default_editor', 'meta-box-order_dashboard', 'bglibDashboardOrder', 'boldgrid_dismissed_admin_notices');
DELETE FROM wp_termmeta WHERE meta_key IN ('boldgrid_hide_page_title', '_wp_page_template', 'boldgrid_in_page_containers', 'dismissed_wp_pointers', '_bgppb_default_editor', 'meta-box-order_dashboard', 'bglibDashboardOrder', 'boldgrid_dismissed_admin_notices');
DELETE FROM wp_commentmeta WHERE meta_key IN ('boldgrid_hide_page_title', '_wp_page_template', 'boldgrid_in_page_containers', 'dismissed_wp_pointers', '_bgppb_default_editor', 'meta-box-order_dashboard', 'bglibDashboardOrder', 'boldgrid_dismissed_admin_notices');

