<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('di_guild_id');
delete_site_option('di_guild_id');
delete_option('di_bot_token');
delete_site_option('di_bot_token');
delete_option('di_client_id');
delete_site_option('di_client_id');
delete_option('di_client_secret');
delete_site_option('di_client_secret');
delete_option('di_redirect_url');
delete_site_option('di_redirect_url');
delete_option('di_auto_add');
delete_site_option('di_auto_add');
delete_option('di_wp2d_roles_subscriber');
delete_site_option('di_wp2d_roles_subscriber');
delete_option('di_enable_login');
delete_site_option('di_enable_login');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'di_wp2d_roles_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'di_discord_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'di_discord_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'di_discord_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'di_discord_id' ) );

