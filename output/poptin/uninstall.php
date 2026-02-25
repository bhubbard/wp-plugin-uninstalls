<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_hide_affiliate_box' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_show_affiliate_box_after' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('poptin_id');
delete_site_option('poptin_id');
delete_option('poptin_marketplace_token');
delete_site_option('poptin_marketplace_token');
delete_option('poptin_user_id');
delete_site_option('poptin_user_id');
delete_option('poptin_marketplace_email_id');
delete_site_option('poptin_marketplace_email_id');
delete_option('poptin_plugin_redirection');
delete_site_option('poptin_plugin_redirection');

