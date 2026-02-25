<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('peg_oauth_settings');
delete_site_option('peg_oauth_settings');
delete_option('peg_max_albums_displayed');
delete_site_option('peg_max_albums_displayed');
delete_option('peg_saved_user_name');
delete_site_option('peg_saved_user_name');
delete_option('peg_last_album');
delete_site_option('peg_last_album');
delete_option('peg_saved_state');
delete_site_option('peg_saved_state');
delete_option('peg_migrate_state');
delete_site_option('peg_migrate_state');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'pe2%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('peg_general_settings');
delete_site_option('peg_general_settings');
delete_option('peg_multisite');
delete_site_option('peg_multisite');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('peg_roles');
delete_site_option('peg_roles');
delete_option('peg_cache_keys');
delete_site_option('peg_cache_keys');

// Delete Transients
delete_transient('settings_errors');
delete_site_transient('settings_errors');

