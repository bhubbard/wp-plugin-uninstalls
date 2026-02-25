<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_contact_days' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_inbound_days' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_outbound_days' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_spam_days' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('inazo_flamingo_auto_trash_version');
delete_site_option('inazo_flamingo_auto_trash_version');
delete_option('inazo_flamingo_auto_trash_contact_days');
delete_site_option('inazo_flamingo_auto_trash_contact_days');
delete_option('inazo_flamingo_auto_trash_inbound_days');
delete_site_option('inazo_flamingo_auto_trash_inbound_days');
delete_option('inazo_flamingo_auto_trash_outbound_days');
delete_site_option('inazo_flamingo_auto_trash_outbound_days');
delete_option('inazo_flamingo_auto_trash_spam_days');
delete_site_option('inazo_flamingo_auto_trash_spam_days');

// Clear Cron Jobs
wp_clear_scheduled_hook('inazo_flamingo_auto_trash_cron_task_daily');

