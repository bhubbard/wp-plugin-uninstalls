-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'allowedthemes');
DELETE FROM wp_options WHERE option_name LIKE '%_just_activated';
DELETE FROM wp_options WHERE option_name LIKE '%_plugin_permalinks_flushed';
DELETE FROM wp_options WHERE option_name LIKE 'wpr_plugin_was_active_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpr_theme_was_active_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpr_plugin_activation_failed_%';

