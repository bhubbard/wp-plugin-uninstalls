<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_notices_login' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('custom_notices_text');
delete_site_option('custom_notices_text');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_notices_text' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_notices_notification_type' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('custom_notices_notification_type');
delete_site_option('custom_notices_notification_type');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_notices_hide' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_notices_location' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('custom_notices_hide');
delete_site_option('custom_notices_hide');
delete_option('custom_notices_location');
delete_site_option('custom_notices_location');
delete_option('administrator_notices_text');
delete_site_option('administrator_notices_text');
delete_option('administrator_notices_location');
delete_site_option('administrator_notices_location');
delete_option('administrator_notices_notification_type');
delete_site_option('administrator_notices_notification_type');
delete_option('administrator_notices_hide');
delete_site_option('administrator_notices_hide');
delete_option('administrator_notices_admin_bar');
delete_site_option('administrator_notices_admin_bar');
delete_option('editor_notices_text');
delete_site_option('editor_notices_text');
delete_option('editor_notices_location');
delete_site_option('editor_notices_location');
delete_option('editor_notices_notification_type');
delete_site_option('editor_notices_notification_type');
delete_option('editor_notices_hide');
delete_site_option('editor_notices_hide');
delete_option('editor_notices_admin_bar');
delete_site_option('editor_notices_admin_bar');
delete_option('author_notices_text');
delete_site_option('author_notices_text');
delete_option('author_notices_location');
delete_site_option('author_notices_location');
delete_option('author_notices_notification_type');
delete_site_option('author_notices_notification_type');
delete_option('author_notices_hide');
delete_site_option('author_notices_hide');
delete_option('author_notices_admin_bar');
delete_site_option('author_notices_admin_bar');
delete_option('contributor_notices_text');
delete_site_option('contributor_notices_text');
delete_option('contributor_notices_location');
delete_site_option('contributor_notices_location');
delete_option('contributor_notices_notification_type');
delete_site_option('contributor_notices_notification_type');
delete_option('contributor_notices_hide');
delete_site_option('contributor_notices_hide');
delete_option('contributor_notices_admin_bar');
delete_site_option('contributor_notices_admin_bar');
delete_option('subscriber_notices_text');
delete_site_option('subscriber_notices_text');
delete_option('subscriber_notices_location');
delete_site_option('subscriber_notices_location');
delete_option('subscriber_notices_notification_type');
delete_site_option('subscriber_notices_notification_type');
delete_option('subscriber_notices_hide');
delete_site_option('subscriber_notices_hide');
delete_option('subscriber_notices_admin_bar');
delete_site_option('subscriber_notices_admin_bar');
delete_option('custom_notices_login');
delete_site_option('custom_notices_login');
delete_option('custom_notices_admin_bar');
delete_site_option('custom_notices_admin_bar');

