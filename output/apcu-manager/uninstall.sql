-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('apcm_plugin_options_logger', 'apcm_plugin_options_adminbar', 'apcm_plugin_options_usecdn', 'apcm_plugin_options_nag', 'apcm_plugin_features_earlyloading', 'apcm_plugin_features_gc', 'apcm_plugin_features_analytics', 'apcm_plugin_features_history', 'apcm_plugin_features_metrics', 'apcm_earlyloading', 'apcm_forceearlyloading', 'auto_update_plugins', 'update_plugins');

