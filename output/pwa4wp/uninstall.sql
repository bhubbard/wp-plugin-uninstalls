-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pwa4wp_manifest', 'pwa4wp_cache_settings', 'pwa4wp_app_iconurl', 'pwa4wp_app_icons', 'pwa4wp_sw_version', 'pwa4wp_advanced', 'pwa4wp_manifest_created', 'pwa4wp_sw_created', 'pwa4wp_sw_installation_switch', 'pwa4wp_multisite_unify', 'pwa4wp_defer_install', 'pwa4wp_push_enable');

