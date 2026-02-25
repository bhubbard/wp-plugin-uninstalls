<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('debugm_log_file_path');
delete_site_option('debugm_log_file_path');
delete_option('debugm_js_log_file_path');
delete_site_option('debugm_js_log_file_path');
delete_option('debugm_js_error_logging');
delete_site_option('debugm_js_error_logging');
delete_option('debugm_log_status');
delete_site_option('debugm_log_status');
delete_option('debugm_autorefresh');
delete_site_option('debugm_autorefresh');
delete_option('debugm_modify_script_debug');
delete_site_option('debugm_modify_script_debug');
delete_option('debugm_process_non_utc_timezones');
delete_site_option('debugm_process_non_utc_timezones');
delete_option('debugm_log_status_changed');
delete_site_option('debugm_log_status_changed');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'debugm_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('debugm_wp_config_backup');
delete_site_option('debugm_wp_config_backup');

// Delete Transients
delete_transient('debugm_activation_redirect');
delete_site_transient('debugm_activation_redirect');

