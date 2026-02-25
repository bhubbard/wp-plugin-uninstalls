<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bcSOFF_offline_redirect');
delete_site_option('bcSOFF_offline_redirect');
delete_option('bcSOFF_site_offline');
delete_site_option('bcSOFF_site_offline');
delete_option('bcSOFF_offline_analytics');
delete_site_option('bcSOFF_offline_analytics');
delete_option('bcSOFF_offline_header');
delete_site_option('bcSOFF_offline_header');
delete_option('bcSOFF_offline_redirect_url');
delete_site_option('bcSOFF_offline_redirect_url');
delete_option('bcSOFF_offline_ip_exempt');
delete_site_option('bcSOFF_offline_ip_exempt');
delete_option('bcSOFF_offline_background_image');
delete_site_option('bcSOFF_offline_background_image');
delete_option('bcSOFF_offline_logo');
delete_site_option('bcSOFF_offline_logo');
delete_option('bcSOFF_offline_message');
delete_site_option('bcSOFF_offline_message');
delete_option('bcSOFF_offline_theme');
delete_site_option('bcSOFF_offline_theme');
delete_option('bcSOFF_offline_css');
delete_site_option('bcSOFF_offline_css');
delete_option('bcSOFF_offline_label');
delete_site_option('bcSOFF_offline_label');
delete_option('bcSOFF_share_data');
delete_site_option('bcSOFF_share_data');
delete_option('bcSOFF_token');
delete_site_option('bcSOFF_token');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'bcSOFF_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('bcSOFF_apistring');
delete_site_option('bcSOFF_apistring');

// Delete Transients
delete_transient('bcSOFF_ask_account_update');
delete_site_transient('bcSOFF_ask_account_update');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ssso_post_override' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ssso_post_override' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ssso_post_override' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ssso_post_override' ) );

