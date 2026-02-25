<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rwctm_global_options');
delete_site_option('rwctm_global_options');
delete_option('rwctm_activation_time');
delete_site_option('rwctm_activation_time');
delete_option('rwctm_teamLists');
delete_site_option('rwctm_teamLists');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_activity' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_option' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('rwctm_spare_me');
delete_site_option('rwctm_spare_me');
delete_option('rwctm_teamIDs');
delete_site_option('rwctm_teamIDs');
delete_option('rwctm_memberCount');
delete_site_option('rwctm_memberCount');
delete_option('rwctm_IDsSerial');
delete_site_option('rwctm_IDsSerial');
delete_option('external_updates-rwc-team-members');
delete_site_option('external_updates-rwc-team-members');

