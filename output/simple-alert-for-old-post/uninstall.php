<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simple_alert_for_old_post_is_show_single');
delete_site_option('simple_alert_for_old_post_is_show_single');
delete_option('simple_alert_for_old_post_is_show_page');
delete_site_option('simple_alert_for_old_post_is_show_page');
delete_option('simple_alert_for_old_post_date');
delete_site_option('simple_alert_for_old_post_date');
delete_option('simple_alert_for_old_post_date_type');
delete_site_option('simple_alert_for_old_post_date_type');
delete_option('simple_alert_for_old_post_theme');
delete_site_option('simple_alert_for_old_post_theme');
delete_option('simple_alert_for_old_post_icon');
delete_site_option('simple_alert_for_old_post_icon');
delete_option('simple_alert_for_old_post_message');
delete_site_option('simple_alert_for_old_post_message');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'simple_alert_for_old_post_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

