-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fileorganizer_pro_version', 'fileorganizer_version', 'fileorganizer_options', 'fileorganizer_promo_time', 'softaculous_plugin_update_notice', 'update_plugins');

