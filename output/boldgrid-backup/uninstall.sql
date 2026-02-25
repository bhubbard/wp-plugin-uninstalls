-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('boldgrid_backup_settings', 'boldgrid_backup_latest_backup', 'boldgrid_backup_pending_rollback', 'boldgrid_backup_id', 'boldgrid_backup_last_backup', 'boldgrid_settings', 'boldgrid_reseller', 'boldgrid_api_key', 'boldgrid_backup_tokens', 'boldgrid_site_hash', 'bg_connect_configs', 'bglib_configs', 'boldgrid_connect_hide_menu', 'boldgrid_plugin_page_notices', '_transient_timeout_boldgrid_plugin_information', 'bglib_activity', 'bglib_rating_prompt', 'dirsize_cache', 'boldgrid_backup_wp_size', 'boldgrid_backup_db_size', 'boldgrid_available', 'bg_license_data', 'boldgrid_api_data', 'boldgrid_plugins_filtered', 'update_plugins', 'boldgrid_plugin_information', 'update_themes', 'boldgrid_theme_information', 'random_seed', 'boldgrid_theme_data', 'boldgrid_plugins', 'boldgrid_wporg_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'auto_update_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('meta-box-order_dashboard', 'bglibDashboardOrder', 'boldgrid_dismissed_admin_notices');
DELETE FROM wp_usermeta WHERE meta_key IN ('meta-box-order_dashboard', 'bglibDashboardOrder', 'boldgrid_dismissed_admin_notices');
DELETE FROM wp_termmeta WHERE meta_key IN ('meta-box-order_dashboard', 'bglibDashboardOrder', 'boldgrid_dismissed_admin_notices');
DELETE FROM wp_commentmeta WHERE meta_key IN ('meta-box-order_dashboard', 'bglibDashboardOrder', 'boldgrid_dismissed_admin_notices');

