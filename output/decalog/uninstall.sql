-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('decalog_listeners_options_autostart', 'decalog_loggers_options_autostart', 'decalog_loggers_options_pseudonymization', 'decalog_loggers_options_wpdebug', 'decalog_loggers_options_env_substitution', 'decalog_plugin_options_privileges', 'decalog_plugin_options_adminbar', 'decalog_plugin_options_favicons', 'decalog_plugin_options_podd', 'decalog_plugin_options_geoip', 'decalog_plugin_options_shmop', 'decalog_plugin_options_usecdn', 'decalog_plugin_options_nag', 'decalog_plugin_features_earlyloading', 'decalog_plugin_features_livelog', 'decalog_plugin_features_slowqueries', 'decalog_plugin_features_tracequeries', 'decalog_plugin_features_unknownmetrics', 'decalog_plugin_features_metrics_authent', 'decalog_plugin_advanced_unbuffered_cli', 'decalog_plugin_advanced_buffer_size', 'decalog_logger_misc_name', 'decalog_logger_misc_level', 'decalog_logger_delete_name', 'decalog_logger_delete_level', 'decalog_logger_specific_dummy', 'decalog_logger_privacy_ip', 'decalog_logger_privacy_name', 'decalog_earlyloading', 'decalog_version', 'auto_update_plugins', 'update_themes', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'decalog_listeners_settings_%';
DELETE FROM wp_options WHERE option_name LIKE 'scrape_key_%';

