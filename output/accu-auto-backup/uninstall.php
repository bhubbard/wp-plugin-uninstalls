<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('accu_auto_backup_backups');
delete_site_option('accu_auto_backup_backups');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_sc_auto_enabled' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_backup_method' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_sc_auto_interval' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_bkp_store_limit' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('accu_auto_backup_exclude_table');
delete_site_option('accu_auto_backup_exclude_table');
delete_option('accu_auto_backup_log');
delete_site_option('accu_auto_backup_log');
delete_option('accu_auto_backup_sc_auto_enabled');
delete_site_option('accu_auto_backup_sc_auto_enabled');
delete_option('accu_auto_backup_bkp_store_limit');
delete_site_option('accu_auto_backup_bkp_store_limit');
delete_option('accu_last_backup');
delete_site_option('accu_last_backup');
delete_option('accu_auto_backup_backup_method');
delete_site_option('accu_auto_backup_backup_method');
delete_option('accu_auto_backup_sc_auto_interval');
delete_site_option('accu_auto_backup_sc_auto_interval');

// Delete Transients
delete_transient('accu_auto_backup_updated');
delete_site_transient('accu_auto_backup_updated');

