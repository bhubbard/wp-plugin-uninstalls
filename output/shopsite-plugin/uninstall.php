<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ss_just_activated');
delete_site_option('ss_just_activated');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'ss_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ss_version');
delete_site_option('ss_version');
delete_option('ss_shopsite_url');
delete_site_option('ss_shopsite_url');
delete_option('ss_config_type');
delete_site_option('ss_config_type');
delete_option('ss_media_url');
delete_site_option('ss_media_url');
delete_option('ss_config_dump');
delete_site_option('ss_config_dump');
delete_option('ss_clientid');
delete_site_option('ss_clientid');
delete_option('ss_secretkey');
delete_site_option('ss_secretkey');
delete_option('ss_code');
delete_site_option('ss_code');
delete_option('ss_authorizationurl');
delete_site_option('ss_authorizationurl');
delete_option('ss_identifier');
delete_site_option('ss_identifier');
delete_option('ss_remember_search');
delete_site_option('ss_remember_search');
delete_option('ss_remembered_search_string');
delete_site_option('ss_remembered_search_string');

