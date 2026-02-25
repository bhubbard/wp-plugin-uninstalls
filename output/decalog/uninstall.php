<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('decalog_listeners_options_autostart');
delete_site_option('decalog_listeners_options_autostart');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'decalog_listeners_settings_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('decalog_loggers_options_autostart');
delete_site_option('decalog_loggers_options_autostart');
delete_option('decalog_loggers_options_pseudonymization');
delete_site_option('decalog_loggers_options_pseudonymization');
delete_option('decalog_loggers_options_wpdebug');
delete_site_option('decalog_loggers_options_wpdebug');
delete_option('decalog_loggers_options_env_substitution');
delete_site_option('decalog_loggers_options_env_substitution');
delete_option('decalog_plugin_options_privileges');
delete_site_option('decalog_plugin_options_privileges');
delete_option('decalog_plugin_options_adminbar');
delete_site_option('decalog_plugin_options_adminbar');
delete_option('decalog_plugin_options_favicons');
delete_site_option('decalog_plugin_options_favicons');
delete_option('decalog_plugin_options_podd');
delete_site_option('decalog_plugin_options_podd');
delete_option('decalog_plugin_options_geoip');
delete_site_option('decalog_plugin_options_geoip');
delete_option('decalog_plugin_options_shmop');
delete_site_option('decalog_plugin_options_shmop');
delete_option('decalog_plugin_options_usecdn');
delete_site_option('decalog_plugin_options_usecdn');
delete_option('decalog_plugin_options_nag');
delete_site_option('decalog_plugin_options_nag');
delete_option('decalog_plugin_features_earlyloading');
delete_site_option('decalog_plugin_features_earlyloading');
delete_option('decalog_plugin_features_livelog');
delete_site_option('decalog_plugin_features_livelog');
delete_option('decalog_plugin_features_slowqueries');
delete_site_option('decalog_plugin_features_slowqueries');
delete_option('decalog_plugin_features_tracequeries');
delete_site_option('decalog_plugin_features_tracequeries');
delete_option('decalog_plugin_features_unknownmetrics');
delete_site_option('decalog_plugin_features_unknownmetrics');
delete_option('decalog_plugin_features_metrics_authent');
delete_site_option('decalog_plugin_features_metrics_authent');
delete_option('decalog_plugin_advanced_unbuffered_cli');
delete_site_option('decalog_plugin_advanced_unbuffered_cli');
delete_option('decalog_plugin_advanced_buffer_size');
delete_site_option('decalog_plugin_advanced_buffer_size');
delete_option('decalog_logger_misc_name');
delete_site_option('decalog_logger_misc_name');
delete_option('decalog_logger_misc_level');
delete_site_option('decalog_logger_misc_level');
delete_option('decalog_logger_delete_name');
delete_site_option('decalog_logger_delete_name');
delete_option('decalog_logger_delete_level');
delete_site_option('decalog_logger_delete_level');
delete_option('decalog_logger_specific_dummy');
delete_site_option('decalog_logger_specific_dummy');
delete_option('decalog_logger_privacy_ip');
delete_site_option('decalog_logger_privacy_ip');
delete_option('decalog_logger_privacy_name');
delete_site_option('decalog_logger_privacy_name');
delete_option('decalog_earlyloading');
delete_site_option('decalog_earlyloading');
delete_option('decalog_version');
delete_site_option('decalog_version');
delete_option('auto_update_plugins');
delete_site_option('auto_update_plugins');

// Delete Transients
delete_transient('update_themes');
delete_site_transient('update_themes');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_scrape_key_%', '_site_transient_scrape_key_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

