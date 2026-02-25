<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('poplugin_registered_org');
delete_site_option('poplugin_registered_org');
delete_option('poplugin_user_exists');
delete_site_option('poplugin_user_exists');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_onboard_script' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('update_onboard_script');
delete_site_option('update_onboard_script');

