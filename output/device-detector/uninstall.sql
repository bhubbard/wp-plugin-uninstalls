-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('podd_plugin_options_favicons', 'podd_plugin_options_logger', 'podd_plugin_options_usecdn', 'podd_plugin_options_nag', 'podd_plugin_features_analytics', 'podd_plugin_features_history', 'podd_plugin_core_wp_is_mobile', 'podd_plugin_css_current', 'auto_update_plugins', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'podd_plugin_css_%';

