#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'decalog_listeners_options_autostart'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'decalog_listeners_settings_%'"
wp option delete 'decalog_loggers_options_autostart'
wp option delete 'decalog_loggers_options_pseudonymization'
wp option delete 'decalog_loggers_options_wpdebug'
wp option delete 'decalog_loggers_options_env_substitution'
wp option delete 'decalog_plugin_options_privileges'
wp option delete 'decalog_plugin_options_adminbar'
wp option delete 'decalog_plugin_options_favicons'
wp option delete 'decalog_plugin_options_podd'
wp option delete 'decalog_plugin_options_geoip'
wp option delete 'decalog_plugin_options_shmop'
wp option delete 'decalog_plugin_options_usecdn'
wp option delete 'decalog_plugin_options_nag'
wp option delete 'decalog_plugin_features_earlyloading'
wp option delete 'decalog_plugin_features_livelog'
wp option delete 'decalog_plugin_features_slowqueries'
wp option delete 'decalog_plugin_features_tracequeries'
wp option delete 'decalog_plugin_features_unknownmetrics'
wp option delete 'decalog_plugin_features_metrics_authent'
wp option delete 'decalog_plugin_advanced_unbuffered_cli'
wp option delete 'decalog_plugin_advanced_buffer_size'
wp option delete 'decalog_logger_misc_name'
wp option delete 'decalog_logger_misc_level'
wp option delete 'decalog_logger_delete_name'
wp option delete 'decalog_logger_delete_level'
wp option delete 'decalog_logger_specific_dummy'
wp option delete 'decalog_logger_privacy_ip'
wp option delete 'decalog_logger_privacy_name'
wp option delete 'decalog_earlyloading'
wp option delete 'decalog_version'
wp option delete 'auto_update_plugins'

# Delete Transients
wp transient delete 'update_themes'
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_scrape_key_%' OR option_name LIKE '_site_transient_scrape_key_%'"

