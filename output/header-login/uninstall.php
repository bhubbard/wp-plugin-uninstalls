<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hl_userLogin_Header');
delete_site_option('hl_userLogin_Header');
delete_option('hl_userEmail_Header');
delete_site_option('hl_userEmail_Header');
delete_option('hl_userFirstname_Header');
delete_site_option('hl_userFirstname_Header');
delete_option('hl_userLastname_Header');
delete_site_option('hl_userLastname_Header');
delete_option('hl_userNicename_Header');
delete_site_option('hl_userNicename_Header');
delete_option('hl_userDisplayname_Header');
delete_site_option('hl_userDisplayname_Header');
delete_option('hl_authHeader');
delete_site_option('hl_authHeader');
delete_option('hl_logoutURL');
delete_site_option('hl_logoutURL');
delete_option('hl_settingsSaved');
delete_site_option('hl_settingsSaved');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'hl_createNewUser%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'hl_defaultRole%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('hl_createNewUser');
delete_site_option('hl_createNewUser');
delete_option('hl_defaultRole');
delete_site_option('hl_defaultRole');

