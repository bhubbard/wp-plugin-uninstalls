<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpcsc_table_html');
delete_site_option('wpcsc_table_html');
delete_option('wpcsc__state');
delete_site_option('wpcsc__state');
delete_option('wpcsc_install_date');
delete_site_option('wpcsc_install_date');
delete_option('wpcsc_delete_data');
delete_site_option('wpcsc_delete_data');
delete_option('wpcsc__settings');
delete_site_option('wpcsc__settings');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('wpcsc__pdf');
delete_site_option('wpcsc__pdf');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpcsc__%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpcsc__form');
delete_site_option('wpcsc__form');
delete_option('wpcsc__form-nc');
delete_site_option('wpcsc__form-nc');
delete_option('wpcsc__email');
delete_site_option('wpcsc__email');
delete_option('wpcsc__admin_email');
delete_site_option('wpcsc__admin_email');
delete_option('wpcsc_table_data');
delete_site_option('wpcsc_table_data');
delete_option('wpcsc__misc');
delete_site_option('wpcsc__misc');
delete_option('wpcsc_db_version');
delete_site_option('wpcsc_db_version');
delete_option('wpcsc_settings');
delete_site_option('wpcsc_settings');

// Delete Transients
delete_transient('wpcsc_activated');
delete_site_transient('wpcsc_activated');
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');

