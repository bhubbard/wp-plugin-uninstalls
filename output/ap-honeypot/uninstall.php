<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('httpbl_age_thres');
delete_site_option('httpbl_age_thres');
delete_option('httpbl_threat_thres');
delete_site_option('httpbl_threat_thres');
delete_option('httpbl_threat_thres_s');
delete_site_option('httpbl_threat_thres_s');
delete_option('httpbl_threat_thres_h');
delete_site_option('httpbl_threat_thres_h');
delete_option('httpbl_threat_thres_c');
delete_site_option('httpbl_threat_thres_c');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'httpbl_deny_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('httpbl_white_listed_ips');
delete_site_option('httpbl_white_listed_ips');
delete_option('httpbl_hp');
delete_site_option('httpbl_hp');
delete_option('httpbl_log');
delete_site_option('httpbl_log');
delete_option('httpbl_stats');
delete_site_option('httpbl_stats');
delete_option('httpbl_stats_pattern');
delete_site_option('httpbl_stats_pattern');
delete_option('httpbl_stats_link');
delete_site_option('httpbl_stats_link');
delete_option('httpbl_key');
delete_site_option('httpbl_key');
delete_option('httpbl_not_logged_ips');
delete_site_option('httpbl_not_logged_ips');
delete_option('httpbl_log_blocked_only');
delete_site_option('httpbl_log_blocked_only');
delete_option('dashboard_widget_options');
delete_site_option('dashboard_widget_options');

