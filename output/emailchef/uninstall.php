<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('emailchef_invalid_credentials_notice');
delete_site_option('emailchef_invalid_credentials_notice');
delete_option('emailchef_settings');
delete_site_option('emailchef_settings');
delete_option('fs_contact_global');
delete_site_option('fs_contact_global');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fs_contact_form%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('check_emailchef_credentials');

