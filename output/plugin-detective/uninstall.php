<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('itsec-storage');
delete_site_option('itsec-storage');
delete_option('pdt_tmp_active_plugins_backup_from_case_opening');
delete_site_option('pdt_tmp_active_plugins_backup_from_case_opening');
delete_option('pdt_active_case_id');
delete_site_option('pdt_active_case_id');
delete_option('pdt_cases');
delete_site_option('pdt_cases');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'pdt_case_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('pdt_tmp_active_plugins_backup');
delete_site_option('pdt_tmp_active_plugins_backup');

