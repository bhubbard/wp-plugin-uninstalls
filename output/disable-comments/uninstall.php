<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('disable_comments_sitewide_settings');
delete_site_option('disable_comments_sitewide_settings');
delete_option('disable_comments_options');
delete_site_option('disable_comments_options');
delete_option('disable_comments_post_types');
delete_site_option('disable_comments_post_types');
delete_option('disable_comment_version');
delete_site_option('disable_comment_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpins_deactivation_reason_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpins_deactivation_details_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpins_allow_tracking');
delete_site_option('wpins_allow_tracking');
delete_option('wpins_last_track_time');
delete_site_option('wpins_last_track_time');
delete_option('wpins_block_notice');
delete_site_option('wpins_block_notice');

// Delete Transients
delete_transient('wc_count_comments');
delete_site_transient('wc_count_comments');

