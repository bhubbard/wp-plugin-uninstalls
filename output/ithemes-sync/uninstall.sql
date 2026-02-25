-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ithemes-sync-authenticated', 'ithemes_sync_hide_authenticate_notice', 'ithemes-sync-admin_menu', 'ithemes-sync-dashboard-metaboxes', 'pluginbuddy_plugins', 'wpcomplete_license_key', 'pmpro_um_license_key', 'rcpcr_license_key', 'rcprm', 'rcpum_license_key', 'rcpvl', 'rcpbp_license_key', 'view_limit', 'ithemes-sync-googst', 'sync_wp_deleted_plugins', 'update_plugins', 'ithemes_sync_urgent_notice_cache', 'ithemes-sync-cache', 'ithemes_sync_optimization', 'wpmu_upgrade_site', 'ithemes-sync-activated', 'update_plugins', 'update_themes', 'update_core');
DELETE FROM wp_options WHERE option_name LIKE 'ithemes-sync-nonce-%';
DELETE FROM wp_options WHERE option_name LIKE 'sync_login_%';
DELETE FROM wp_options WHERE option_name LIKE 'solid_central_ping_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('it-sync-refresh-cd', 'ithemes-sync-client-dashboard', 'ithemes-sync-client-dashboard-no-css', 'ithemes-sync-suppress-admin-notices', 'ithemes-sync-admin_menu-whitelist', 'ithemes-sync-dashboard-widget-whitelist');
DELETE FROM wp_usermeta WHERE meta_key IN ('it-sync-refresh-cd', 'ithemes-sync-client-dashboard', 'ithemes-sync-client-dashboard-no-css', 'ithemes-sync-suppress-admin-notices', 'ithemes-sync-admin_menu-whitelist', 'ithemes-sync-dashboard-widget-whitelist');
DELETE FROM wp_termmeta WHERE meta_key IN ('it-sync-refresh-cd', 'ithemes-sync-client-dashboard', 'ithemes-sync-client-dashboard-no-css', 'ithemes-sync-suppress-admin-notices', 'ithemes-sync-admin_menu-whitelist', 'ithemes-sync-dashboard-widget-whitelist');
DELETE FROM wp_commentmeta WHERE meta_key IN ('it-sync-refresh-cd', 'ithemes-sync-client-dashboard', 'ithemes-sync-client-dashboard-no-css', 'ithemes-sync-suppress-admin-notices', 'ithemes-sync-admin_menu-whitelist', 'ithemes-sync-dashboard-widget-whitelist');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ithemes-sync-admin-bar-item-whitelist-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ithemes-sync-admin-bar-item-whitelist-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ithemes-sync-admin-bar-item-whitelist-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ithemes-sync-admin-bar-item-whitelist-%';

